# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "turbolinks:load", ->

  $('.categories').selectize ->
    return

  $('.skad').selectize ->
    return

  $('.materials').selectize ->
    return

  $('.colors').selectize ->
    return

  $('.file').on "click", (event) ->
    child = this.firstElementChild.src
    parent = document.getElementById("big")

    $(parent).fadeOut(200, ->
      $(parent).attr 'src', child
      return
    ).fadeIn 400