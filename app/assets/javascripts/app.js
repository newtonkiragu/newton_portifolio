$(document).ready(function() {
  $(".button-collapse").sideNav();
  $('.parallax').parallax();
  $('.scrollspy').scrollSpy().aciveClass();


  function(id) {
    return 'a[href="#' + id + '"]';
  }

  $(window).scroll(function() {
    var scrollPos = $(window).scrollTop(),
      navbar = $('.navbar');

    if (scrollPos > 200) {
      navbar.addClass('alt-color');
    } else {
      navbar.removeClass('alt-color');
    }
  });
});
