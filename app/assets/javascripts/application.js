//= require jquery
//= require rails-ujs
//= require selectize
//= require turbolinks
//= require_tree .

$(document).on("turbolinks:load", function() {
  // Window load
  $(window).load(function() {
    $('.menu-mobile').css('transform', 'translate(-100%, 0)');
  });
  // Menu OPEN
  $(".menu-open").on("click", function() {
    $('.menu-mobile').css('transform', 'translate(0%, 0)');
  });
  // Menu CLOSE
  $(".menu-close").on("click", function() {
    $('.menu-mobile').css('transform', 'translate(-100%, 0)');
  });
  // Set CSS
  $('.menu-open').css("font-size", "36px");
  $('.menu-close').css("font-size", "36px");
  // Scrolling
  $(window).scroll(function() {
    if($(window).scrollTop() > 80) {
      $('.menu-fixed').css("min-height", "80px");
      $('.menu-logo').css("height", "70px");
      $('.menu-logo-container').css("height", "49px");
      $('.menu-open').css("font-size", "24px");
      $('.menu-close').css("font-size", "24px");
      $('.top-arrow').css({"opacity": "1", "font-size": "24px"});
    } else {
      $('.menu-fixed').css("min-height", "160px");
      $('.menu-logo').css("height", "96px");
      $('.menu-logo-container').css("height", "96px");
      $('.menu-open').css("font-size", "36px");
      $('.menu-close').css("font-size", "36px");
      $('.top-arrow').css("opacity", "0");
    }
  });
  // Top Arrow scrolling
  $(".top-arrow").click(function() {
    $("html, body").animate({ scrollTop: 0 }, 500);
    return false;
  });
  var scale = window.devicePixelRatio;
  Cookies.set('scale', scale);
  Turbolikns.clearCache()
});