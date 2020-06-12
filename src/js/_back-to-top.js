var $backToTopBtn = $('.js-back-to-top');

$(window).scroll(function() {
  if ($(this).scrollTop() > 200) {
    $backToTopBtn.addClass('on');
  }
  else {
    $backToTopBtn.removeClass('on');
  }
});

$backToTopBtn.on('click', function(e) {
  $('html, body').animate({
    scrollTop: 0,
  }, 'fast');
});
