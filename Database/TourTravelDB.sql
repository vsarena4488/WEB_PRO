-- =========================================================================
-- DATABASE: TourTravelDB (Online Tour & Travel Management System)
-- Target Server: (localdb)\MSSQLLocalDB or SQL Server 2016+
-- Fully Normalized (3NF) Database Design with Primary & Foreign Keys
-- =========================================================================

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'TourTravelDB')
BEGIN
    CREATE DATABASE [TourTravelDB];
END
GO

USE [TourTravelDB];
GO

-- -------------------------------------------------------------------------
-- DROP TABLES IN REVERSE DEPENDENCY ORDER (Safe Re-run)
-- -------------------------------------------------------------------------
IF OBJECT_ID(N'[dbo].[Payments]', 'U') IS NOT NULL DROP TABLE [dbo].[Payments];
IF OBJECT_ID(N'[dbo].[Reviews]', 'U') IS NOT NULL DROP TABLE [dbo].[Reviews];
IF OBJECT_ID(N'[dbo].[Wishlist]', 'U') IS NOT NULL DROP TABLE [dbo].[Wishlist];
IF OBJECT_ID(N'[dbo].[Bookings]', 'U') IS NOT NULL DROP TABLE [dbo].[Bookings];
IF OBJECT_ID(N'[dbo].[TourSchedules]', 'U') IS NOT NULL DROP TABLE [dbo].[TourSchedules];
IF OBJECT_ID(N'[dbo].[Tours]', 'U') IS NOT NULL DROP TABLE [dbo].[Tours];
IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL DROP TABLE [dbo].[Categories];
IF OBJECT_ID(N'[dbo].[Offers]', 'U') IS NOT NULL DROP TABLE [dbo].[Offers];
IF OBJECT_ID(N'[dbo].[ContactInquiries]', 'U') IS NOT NULL DROP TABLE [dbo].[ContactInquiries];
IF OBJECT_ID(N'[dbo].[AdminActivities]', 'U') IS NOT NULL DROP TABLE [dbo].[AdminActivities];
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL DROP TABLE [dbo].[Users];
IF OBJECT_ID(N'[dbo].[Admins]', 'U') IS NOT NULL DROP TABLE [dbo].[Admins];
GO

-- =========================================================================
-- 1. TABLE: Admins (Separate Table for Admin Authentication & Role)
-- =========================================================================
CREATE TABLE [dbo].[Admins] (
    [AdminId]       INT             IDENTITY (1, 1) NOT NULL,
    [Username]      NVARCHAR (50)   NOT NULL,
    [Email]         NVARCHAR (150)  NOT NULL,
    [Password]      NVARCHAR (100)  NOT NULL,
    [FullName]      NVARCHAR (100)  NOT NULL,
    [Role]          NVARCHAR (50)   DEFAULT ('Super Admin') NOT NULL,
    [Status]        NVARCHAR (20)   DEFAULT ('Active') NOT NULL,
    [CreatedAt]     DATETIME        DEFAULT (GETDATE()) NOT NULL,
    CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED ([AdminId] ASC),
    CONSTRAINT [UQ_Admins_Email] UNIQUE ([Email]),
    CONSTRAINT [UQ_Admins_Username] UNIQUE ([Username])
);
GO

-- =========================================================================
-- 2. TABLE: Users (Separate Table for Customers/Travelers)
-- =========================================================================
CREATE TABLE [dbo].[Users] (
    [UserId]        INT             IDENTITY (1, 1) NOT NULL,
    [FullName]      NVARCHAR (100)  NOT NULL,
    [Email]         NVARCHAR (150)  NOT NULL,
    [Password]      NVARCHAR (100)  NOT NULL,
    [Phone]         NVARCHAR (30)   NULL,
    [Address]       NVARCHAR (250)  NULL,
    [IdType]        NVARCHAR (50)   DEFAULT ('Aadhar Card') NULL,
    [IdNumber]      NVARCHAR (100)  NULL,
    [Status]        NVARCHAR (20)   DEFAULT ('Active') NOT NULL,
    [CreatedAt]     DATETIME        DEFAULT (GETDATE()) NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserId] ASC),
    CONSTRAINT [UQ_Users_Email] UNIQUE ([Email])
);
GO

-- =========================================================================
-- 3. TABLE: Categories (Tour Destination Categories)
-- =========================================================================
CREATE TABLE [dbo].[Categories] (
    [CategoryId]    INT             IDENTITY (1, 1) NOT NULL,
    [CategoryName]  NVARCHAR (50)   NOT NULL,
    [Description]   NVARCHAR (250)  NULL,
    [Icon]          NVARCHAR (50)   NULL,
    [CreatedAt]     DATETIME        DEFAULT (GETDATE()) NOT NULL,
    CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryId] ASC),
    CONSTRAINT [UQ_Categories_Name] UNIQUE ([CategoryName])
);
GO

-- =========================================================================
-- 4. TABLE: Tours (Tour Packages - Joined to Categories)
-- =========================================================================
CREATE TABLE [dbo].[Tours] (
    [TourId]        INT             IDENTITY (1, 1) NOT NULL,
    [CategoryId]    INT             NOT NULL,
    [TourName]      NVARCHAR (150)  NOT NULL,
    [Location]      NVARCHAR (150)  NOT NULL,
    [Duration]      NVARCHAR (50)   NOT NULL,
    [BasePrice]     DECIMAL (18, 2) NOT NULL,
    [Description]   NVARCHAR (MAX)  NULL,
    [CoverImage]    NVARCHAR (250)  NULL,
    [Status]        NVARCHAR (20)   DEFAULT ('Active') NOT NULL,
    [CreatedAt]     DATETIME        DEFAULT (GETDATE()) NOT NULL,
    CONSTRAINT [PK_Tours] PRIMARY KEY CLUSTERED ([TourId] ASC),
    CONSTRAINT [FK_Tours_Categories] FOREIGN KEY ([CategoryId]) 
        REFERENCES [dbo].[Categories] ([CategoryId]) ON DELETE CASCADE
);
GO

-- =========================================================================
-- 5. TABLE: TourSchedules (Departure Schedules & Inventory - Joined to Tours)
-- =========================================================================
CREATE TABLE [dbo].[TourSchedules] (
    [ScheduleId]     INT             IDENTITY (1, 1) NOT NULL,
    [TourId]         INT             NOT NULL,
    [DepartureDate]  DATE            NOT NULL,
    [ReturnDate]     DATE            NOT NULL,
    [TotalSeats]     INT             NOT NULL,
    [AvailableSeats] INT             NOT NULL,
    [PriceOverride]  DECIMAL (18, 2) NULL,
    [Status]         NVARCHAR (20)   DEFAULT ('Available') NOT NULL,
    [CreatedAt]      DATETIME        DEFAULT (GETDATE()) NOT NULL,
    CONSTRAINT [PK_TourSchedules] PRIMARY KEY CLUSTERED ([ScheduleId] ASC),
    CONSTRAINT [FK_TourSchedules_Tours] FOREIGN KEY ([TourId]) 
        REFERENCES [dbo].[Tours] ([TourId]) ON DELETE CASCADE
);
GO

-- =========================================================================
-- 6. TABLE: Offers (Discounts and Coupon Codes)
-- =========================================================================
CREATE TABLE [dbo].[Offers] (
    [OfferId]            INT             IDENTITY (1, 1) NOT NULL,
    [OfferCode]          NVARCHAR (50)   NOT NULL,
    [Title]              NVARCHAR (150)  NOT NULL,
    [Description]        NVARCHAR (300)  NULL,
    [DiscountPercentage] DECIMAL (5, 2)  NOT NULL,
    [MinBookingAmount]   DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [ValidTill]          DATE            NOT NULL,
    [Status]             NVARCHAR (20)   DEFAULT ('Active') NOT NULL,
    [CreatedAt]          DATETIME        DEFAULT (GETDATE()) NOT NULL,
    CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED ([OfferId] ASC),
    CONSTRAINT [UQ_Offers_Code] UNIQUE ([OfferCode])
);
GO

-- =========================================================================
-- 7. TABLE: Bookings (Joined to Users, Tours, TourSchedules)
-- =========================================================================
CREATE TABLE [dbo].[Bookings] (
    [BookingId]       INT             IDENTITY (1, 1) NOT NULL,
    [BookingCode]     NVARCHAR (50)   NOT NULL,
    [UserId]          INT             NOT NULL,
    [TourId]          INT             NOT NULL,
    [ScheduleId]      INT             NULL,
    [FirstName]       NVARCHAR (100)  NOT NULL,
    [LastName]        NVARCHAR (100)  NOT NULL,
    [Email]           NVARCHAR (150)  NOT NULL,
    [Phone]           NVARCHAR (50)   NOT NULL,
    [IdType]          NVARCHAR (50)   DEFAULT ('Aadhar Card') NULL,
    [IdNumber]        NVARCHAR (100)  NULL,
    [Adults]          INT             DEFAULT ((1)) NOT NULL,
    [Children]        INT             DEFAULT ((0)) NOT NULL,
    [SpecialRequests] NVARCHAR (500)  NULL,
    [TotalAmount]     DECIMAL (18, 2) NOT NULL,
    [PaymentMethod]   NVARCHAR (50)   DEFAULT ('Card') NULL,
    [PaymentStatus]   NVARCHAR (50)   DEFAULT ('Pending') NULL,
    [BookingStatus]   NVARCHAR (50)   DEFAULT ('Upcoming') NULL,
    [Notes]           NVARCHAR (500)  NULL,
    [CreatedAt]       DATETIME        DEFAULT (GETDATE()) NOT NULL,
    CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED ([BookingId] ASC),
    CONSTRAINT [UQ_Bookings_Code] UNIQUE ([BookingCode]),
    CONSTRAINT [FK_Bookings_Users] FOREIGN KEY ([UserId]) 
        REFERENCES [dbo].[Users] ([UserId]),
    CONSTRAINT [FK_Bookings_Tours] FOREIGN KEY ([TourId]) 
        REFERENCES [dbo].[Tours] ([TourId]),
    CONSTRAINT [FK_Bookings_TourSchedules] FOREIGN KEY ([ScheduleId]) 
        REFERENCES [dbo].[TourSchedules] ([ScheduleId])
);
GO

-- =========================================================================
-- 8. TABLE: Payments (Joined to Bookings)
-- =========================================================================
CREATE TABLE [dbo].[Payments] (
    [PaymentId]        INT             IDENTITY (1, 1) NOT NULL,
    [BookingId]        INT             NOT NULL,
    [PaymentMethod]    NVARCHAR (50)   NOT NULL,
    [CardNumberMasked] NVARCHAR (50)   NULL,
    [CardHolderName]   NVARCHAR (100)  NULL,
    [Amount]           DECIMAL (18, 2) NOT NULL,
    [PaymentStatus]    NVARCHAR (50)   DEFAULT ('Completed') NOT NULL,
    [TransactionId]    NVARCHAR (100)  NOT NULL,
    [CreatedAt]        DATETIME        DEFAULT (GETDATE()) NOT NULL,
    CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED ([PaymentId] ASC),
    CONSTRAINT [UQ_Payments_Txn] UNIQUE ([TransactionId]),
    CONSTRAINT [FK_Payments_Bookings] FOREIGN KEY ([BookingId]) 
        REFERENCES [dbo].[Bookings] ([BookingId]) ON DELETE CASCADE
);
GO

-- =========================================================================
-- 9. TABLE: Reviews (Joined to Users and Tours)
-- =========================================================================
CREATE TABLE [dbo].[Reviews] (
    [ReviewId]      INT             IDENTITY (1, 1) NOT NULL,
    [TourId]        INT             NOT NULL,
    [UserId]        INT             NOT NULL,
    [Rating]        INT             NOT NULL CHECK ([Rating] BETWEEN 1 AND 5),
    [Comment]       NVARCHAR (1000) NOT NULL,
    [Status]        NVARCHAR (20)   DEFAULT ('Approved') NOT NULL,
    [CreatedAt]     DATETIME        DEFAULT (GETDATE()) NOT NULL,
    CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED ([ReviewId] ASC),
    CONSTRAINT [FK_Reviews_Tours] FOREIGN KEY ([TourId]) 
        REFERENCES [dbo].[Tours] ([TourId]) ON DELETE CASCADE,
    CONSTRAINT [FK_Reviews_Users] FOREIGN KEY ([UserId]) 
        REFERENCES [dbo].[Users] ([UserId])
);
GO

-- =========================================================================
-- 10. TABLE: Wishlist (Joined to Users and Tours)
-- =========================================================================
CREATE TABLE [dbo].[Wishlist] (
    [WishlistId]    INT             IDENTITY (1, 1) NOT NULL,
    [UserId]        INT             NOT NULL,
    [TourId]        INT             NOT NULL,
    [AddedAt]       DATETIME        DEFAULT (GETDATE()) NOT NULL,
    CONSTRAINT [PK_Wishlist] PRIMARY KEY CLUSTERED ([WishlistId] ASC),
    CONSTRAINT [UQ_Wishlist_UserTour] UNIQUE ([UserId], [TourId]),
    CONSTRAINT [FK_Wishlist_Users] FOREIGN KEY ([UserId]) 
        REFERENCES [dbo].[Users] ([UserId]) ON DELETE CASCADE,
    CONSTRAINT [FK_Wishlist_Tours] FOREIGN KEY ([TourId]) 
        REFERENCES [dbo].[Tours] ([TourId]) ON DELETE CASCADE
);
GO

-- =========================================================================
-- 11. TABLE: ContactInquiries (Support and Inquiry Messages)
-- =========================================================================
CREATE TABLE [dbo].[ContactInquiries] (
    [TicketId]      NVARCHAR (50)   NOT NULL,
    [FullName]      NVARCHAR (100)  NOT NULL,
    [Email]         NVARCHAR (150)  NOT NULL,
    [Subject]       NVARCHAR (200)  NOT NULL,
    [Message]       NVARCHAR (MAX)  NOT NULL,
    [Status]        NVARCHAR (20)   DEFAULT ('Unread') NOT NULL,
    [CreatedAt]     DATETIME        DEFAULT (GETDATE()) NOT NULL,
    CONSTRAINT [PK_ContactInquiries] PRIMARY KEY CLUSTERED ([TicketId] ASC)
);
GO

-- =========================================================================
-- 12. TABLE: AdminActivities (Audit Logs and Dashboard Stats)
-- =========================================================================
CREATE TABLE [dbo].[AdminActivities] (
    [ActivityId]    INT             IDENTITY (1, 1) NOT NULL,
    [ActivityType]  NVARCHAR (50)   NOT NULL,
    [Title]         NVARCHAR (150)  NOT NULL,
    [Description]   NVARCHAR (300)  NOT NULL,
    [BadgeColor]    NVARCHAR (20)   DEFAULT ('blue') NULL,
    [Amount]        DECIMAL (18, 2) NULL,
    [CreatedAt]     DATETIME        DEFAULT (GETDATE()) NOT NULL,
    CONSTRAINT [PK_AdminActivities] PRIMARY KEY CLUSTERED ([ActivityId] ASC)
);
GO

-- =========================================================================
-- SEED SAMPLE DATA (Immediate display on website)
-- =========================================================================

-- 1. Insert Default Admins
INSERT INTO [dbo].[Admins] ([Username], [Email], [Password], [FullName], [Role], [Status])
VALUES 
(N'admin', N'admin@travelpro.com', N'Admin@123', N'Super Administrator', N'Super Admin', N'Active'),
(N'manager', N'manager@travelpro.com', N'Manager@123', N'Tour Manager', N'Manager', N'Active');

-- 2. Insert Default Users
INSERT INTO [dbo].[Users] ([FullName], [Email], [Password], [Phone], [Address], [IdType], [IdNumber], [Status])
VALUES 
(N'Arjun Kothivar', N'arjun@example.com', N'User@123', N'+91 9328206703', N'Rajkot, Gujarat', N'Aadhar Card', N'XXXX-XXXX-4589', N'Active'),
(N'Vishal Sarena', N'vishal@example.com', N'User@123', N'+91 9876543210', N'Ahmedabad, Gujarat', N'Passport', N'J8947261', N'Active'),
(N'Priya Sharma', N'priya@example.com', N'User@123', N'+91 9822334455', N'Mumbai, Maharashtra', N'Aadhar Card', N'XXXX-XXXX-1122', N'Active');

-- 3. Insert Categories
INSERT INTO [dbo].[Categories] ([CategoryName], [Description], [Icon])
VALUES 
(N'Beach', N'Sun, sand, and relaxing sea waves', N'umbrella-beach'),
(N'Mountain', N'Snow-capped peaks and adventurous trekking', N'mountain'),
(N'Heritage', N'Historical monuments and royal culture', N'landmark'),
(N'International', N'World-class global destinations', N'globe-americas');

-- 4. Insert Tours
INSERT INTO [dbo].[Tours] ([CategoryId], [TourName], [Location], [Duration], [BasePrice], [Description], [CoverImage], [Status])
VALUES 
(1, N'Goa Beach Adventure', N'Goa, India', N'3 Days / 2 Nights', 8999.00, N'Enjoy thrilling water sports, beach parties, and vibrant night markets in sunny Goa.', N'~/Assets/images/goa.jpg', N'Active'),
(2, N'Manali Snow Peaks', N'Manali, Himachal Pradesh', N'5 Days / 4 Nights', 14500.00, N'Experience scenic valley views, Solang adventure sports, and Rohtang pass snow.', N'~/Assets/images/manali.jpg', N'Active'),
(1, N'Kerala Backwaters Escape', N'Alleppey & Munnar, Kerala', N'4 Days / 3 Nights', 12999.00, N'Cruising in authentic houseboats through serene lagoons and verdant tea estates.', N'~/Assets/images/kerala.jpg', N'Active'),
(3, N'Rajasthan Royal Heritage', N'Jaipur & Udaipur, Rajasthan', N'6 Days / 5 Nights', 18999.00, N'Discover grandiose forts, royal palaces, desert safaris, and Rajasthani hospitality.', N'~/Assets/images/rajasthan.jpg', N'Active'),
(4, N'Paris Romantic Tour', N'Paris, France', N'7 Days / 6 Nights', 85000.00, N'Explore the Eiffel Tower, Louvre Museum, and cruise down the romantic River Seine.', N'~/Assets/images/paris.jpg', N'Active'),
(4, N'Bali Tropical Paradise', N'Bali, Indonesia', N'5 Days / 4 Nights', 35000.00, N'Pristine beaches, ancient temples, lush rice terraces, and serene wellness retreats.', N'~/Assets/images/bali.jpg', N'Active');

-- 5. Insert Tour Schedules
INSERT INTO [dbo].[TourSchedules] ([TourId], [DepartureDate], [ReturnDate], [TotalSeats], [AvailableSeats], [PriceOverride], [Status])
VALUES 
(1, '2026-11-15', '2026-11-17', 30, 26, 8999.00, N'Available'),
(1, '2026-12-01', '2026-12-03', 30, 20, 9499.00, N'Available'),
(2, '2026-11-20', '2026-11-24', 25, 18, 14500.00, N'Available'),
(3, '2026-11-25', '2026-11-28', 20, 15, 12999.00, N'Available'),
(4, '2026-12-05', '2026-12-10', 25, 22, 18999.00, N'Available');

-- 6. Insert Offers
INSERT INTO [dbo].[Offers] ([OfferCode], [Title], [Description], [DiscountPercentage], [MinBookingAmount], [ValidTill], [Status])
VALUES 
(N'SUMMER25', N'Summer Special Holiday Deal', N'Flat 25% OFF on all Himalayan mountain and hill station tours.', 25.00, 10000.00, '2026-12-31', N'Active'),
(N'GOABEACH', N'Goa Beach Early Bird Discount', N'Get 15% instant discount on booking Goa packages 15 days in advance.', 15.00, 8000.00, '2026-11-30', N'Active'),
(N'WELCOME10', N'New User Welcome Coupon', N'Flat 10% OFF on your very first tour booking with TravelPro.', 10.00, 5000.00, '2026-12-31', N'Active');

-- 7. Insert Sample Bookings
INSERT INTO [dbo].[Bookings] 
([BookingCode], [UserId], [TourId], [ScheduleId], [FirstName], [LastName], [Email], [Phone], [IdType], [IdNumber], [Adults], [Children], [SpecialRequests], [TotalAmount], [PaymentMethod], [PaymentStatus], [BookingStatus])
VALUES 
(N'BK-2026-001', 1, 1, 1, N'Arjun', N'Kothivar', N'arjun@example.com', N'+91 9328206703', N'Aadhar Card', N'XXXX-XXXX-4589', 2, 0, N'Beach facing room preferred', 21237.00, N'Credit Card', N'Completed', N'Upcoming'),
(N'BK-2026-002', 2, 2, 3, N'Vishal', N'Sarena', N'vishal@example.com', N'+91 9876543210', N'Passport', N'J8947261', 2, 1, N'Vegetarian food only', 34220.00, N'UPI / QR', N'Completed', N'Upcoming');

-- 8. Insert Payments
INSERT INTO [dbo].[Payments] ([BookingId], [PaymentMethod], [CardNumberMasked], [CardHolderName], [Amount], [PaymentStatus], [TransactionId])
VALUES 
(1, N'Credit Card', N'4111 •••• •••• 4444', N'Vishal Sarena', 21237.00, N'Completed', N'TXN-98421045'),
(2, N'UPI', NULL, N'Vishal Sarena', 34220.00, N'Completed', N'TXN-77319082');

-- 9. Insert Reviews
INSERT INTO [dbo].[Reviews] ([TourId], [UserId], [Rating], [Comment], [Status])
VALUES 
(1, 1, 5, N'Amazing Goa beach experience! Hotels and transport were top notch.', N'Approved'),
(2, 2, 5, N'Snow in Manali was breathtaking! Our tour guide was very helpful.', N'Approved');

-- 10. Insert Wishlist
INSERT INTO [dbo].[Wishlist] ([UserId], [TourId])
VALUES 
(1, 2),
(1, 4),
(2, 5);

-- 11. Insert Contact Inquiries
INSERT INTO [dbo].[ContactInquiries] ([TicketId], [FullName], [Email], [Subject], [Message], [Status])
VALUES 
(N'TCK-0102', N'Aman Gupta', N'aman.g@example.com', N'Custom group package for corporate retreat', N'We have a team of 35 people wanting to visit Goa in November. Please provide quote.', N'Unread'),
(N'TCK-0103', N'Meera Patel', N'meera.p@example.com', N'Cancellation & Refund Query', N'What is the refund timeline if I cancel 7 days before departure?', N'Resolved');

-- 12. Insert Admin Activities
INSERT INTO [dbo].[AdminActivities] ([ActivityType], [Title], [Description], [BadgeColor], [Amount])
VALUES 
(N'Booking', N'New Tour Booking', N'Arjun Kothivar booked Goa Beach Adventure for 2 adults.', N'blue', 21237.00),
(N'Payment', N'Payment Received', N'Payment for BK-2026-001 confirmed via Credit Card.', N'green', 21237.00),
(N'Booking', N'New Tour Booking', N'Vishal Sarena booked Manali Snow Peaks for 2 adults, 1 child.', N'blue', 34220.00),
(N'Tour', N'Tour Updated', N'Rajasthan Royal Heritage itinerary and prices were updated.', N'amber', NULL);
GO
