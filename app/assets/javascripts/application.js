//= require jquery
//= require rails-ujs
//= require selectize
//= require turbolinks
//= require_tree .

$(document).on("turbolinks:load", function() {
  $(".menu-open").on("click", function() {
    $(".menu-mobile").animate({opacity: "toggle", width: "toggle"});
  });
  var scale = window.devicePixelRatio;
  Cookies.set('scale', scale);
});