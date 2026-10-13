/**
 * SITE.JS - Vanilla UI Interactions (Mobile Menu, Tabs, Password Toggle, etc.)
 * Strictly NO jQuery validation or form validation replacements.
 */

document.addEventListener('DOMContentLoaded', function () {
  // 1. Mobile Sidebar Toggle
  var menuBtn = document.getElementById('menuToggleBtn');
  var sidebar = document.getElementById('appSidebar');
  if (menuBtn && sidebar) {
    menuBtn.addEventListener('click', function (e) {
      e.stopPropagation();
      sidebar.classList.toggle('show-mobile-sidebar');
    });

    document.addEventListener('click', function (e) {
      if (sidebar.classList.contains('show-mobile-sidebar') && !sidebar.contains(e.target) && e.target !== menuBtn) {
        sidebar.classList.remove('show-mobile-sidebar');
      }
    });
  }

  // 2. Password Visibility Toggle
  var togglePassButtons = document.querySelectorAll('.js-toggle-password');
  togglePassButtons.forEach(function (btn) {
    btn.addEventListener('click', function () {
      var targetAttr = this.getAttribute('data-target') || '';
      var ids = targetAttr.split(',').map(function(s){ return s.trim(); }).filter(Boolean);
      if (ids.length === 0) return;

      // Determine new visibility state based on first input
      var firstInput = document.getElementById(ids[0]);
      if (!firstInput) return;
      var makeText = firstInput.type === 'password';

      ids.forEach(function(id){
        var input = document.getElementById(id);
        if (!input) return;
        input.type = makeText ? 'text' : 'password';
      });

      // swap icons by toggling class on button
      if (makeText) {
        this.classList.add('show-password');
        var eye = this.querySelector('.icon-eye');
        var eyeOff = this.querySelector('.icon-eye-off');
        if (eye) eye.style.display = 'none';
        if (eyeOff) eyeOff.style.display = 'inline-block';
      } else {
        this.classList.remove('show-password');
        var eye = this.querySelector('.icon-eye');
        var eyeOff = this.querySelector('.icon-eye-off');
        if (eye) eye.style.display = 'inline-block';
        if (eyeOff) eyeOff.style.display = 'none';
      }
    });
  });

  // 3. Wishlist Heart Button Interactive Toggle
  var wishlistBtns = document.querySelectorAll('.js-wishlist-toggle');
  wishlistBtns.forEach(function (btn) {
    btn.addEventListener('click', function (e) {
      e.preventDefault();
      e.stopPropagation();
      var svg = this.querySelector('svg');
      if (svg) {
        var isFilled = svg.getAttribute('fill') === 'currentColor' || svg.getAttribute('fill') === '#EF4444';
        if (isFilled) {
          svg.setAttribute('fill', 'none');
          this.style.color = '#94A3B8';
        } else {
          svg.setAttribute('fill', '#EF4444');
          this.style.color = '#EF4444';
        }
      }
    });
  });

  // 4. Payment Method Tab Switching
  var payTabs = document.querySelectorAll('.js-payment-tab');
  payTabs.forEach(function (tab) {
    tab.addEventListener('click', function () {
      payTabs.forEach(function (t) { t.classList.remove('active'); });
      this.classList.add('active');
      var target = this.getAttribute('data-target');
      var cardForm = document.getElementById('cardPaymentForm');
      var upiForm = document.getElementById('upiPaymentForm');
      if (cardForm && upiForm) {
        if (target === 'upi') {
          cardForm.style.display = 'none';
          upiForm.style.display = 'block';
        } else {
          cardForm.style.display = 'block';
          upiForm.style.display = 'none';
        }
      }
    });
  });

  // 5. OTP Auto-advance
  var otpInputs = document.querySelectorAll('.js-otp-input');
  otpInputs.forEach(function (input, index) {
    input.addEventListener('keyup', function (e) {
      if (e.key === 'Backspace' || e.key === 'Delete') {
        if (index > 0 && this.value === '') {
          otpInputs[index - 1].focus();
        }
      } else if (this.value.length >= 1) {
        this.value = this.value.substring(0, 1);
        if (index < otpInputs.length - 1) {
          otpInputs[index + 1].focus();
        }
      }
    });
  });

  // 6. File Upload Preview Name
  var fileInputs = document.querySelectorAll('.js-file-upload');
  fileInputs.forEach(function (input) {
    input.addEventListener('change', function () {
      var fileNameBox = this.parentElement.querySelector('.upload-dropzone-text');
      if (fileNameBox && this.files && this.files.length > 0) {
        fileNameBox.textContent = 'Selected: ' + this.files[0].name;
      }
    });
  });

  // 7. Client Filter/Tab Selectors (e.g. My Bookings tabs)
  var filterTabs = document.querySelectorAll('.js-filter-tab');
  filterTabs.forEach(function (tab) {
    tab.addEventListener('click', function (e) {
      filterTabs.forEach(function (t) { t.classList.remove('btn-primary', 'active'); t.classList.add('btn-secondary'); });
      this.classList.remove('btn-secondary');
      this.classList.add('btn-primary', 'active');
      
      var filterVal = this.getAttribute('data-filter');
      var items = document.querySelectorAll('.js-filterable-item');
      if (items.length > 0 && filterVal) {
        items.forEach(function (item) {
          var itemCategory = item.getAttribute('data-category');
          if (filterVal === 'all' || itemCategory === filterVal) {
            item.style.display = 'flex';
          } else {
            item.style.display = 'none';
          }
        });
      }
    });
  });
});
