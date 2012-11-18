# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

initialize = () ->

  mapOptions = 
    zoom: 2
    center: new google.maps.LatLng(31.9762, -42.8906)
    mapTypeId: google.maps.MapTypeId.ROADMAP

  map = new google.maps.Map($('#map_canvas')[0], mapOptions)

$ ->
  initialize()
