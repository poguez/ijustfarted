# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

initialize = () ->

  mapTypeControlOptions = 
    zoom: 2
    center: new google.maps.LatLng(31.9762, -42.8906)
    mapTypeId: google.maps.MapTypeId.ROADMAP
    disableDefaultUI: true
    panControl: true
    zoomControl: true
    zoomControlOptions:
      style: google.maps.ZoomControlStyle.LARGE 
    draggableCursor: 'http://24.media.tumblr.com/tumblr_m81uzhj5jO1qjqmtmo1_r1_100.png'


  map = new google.maps.Map($('#map_canvas')[0], mapTypeControlOptions)

$ ->
  initialize()

  # Search widen
  $('#search').focus ->
    $(this).animate({opacity: 1, width: '260px'}, 'fast')
  
  $('#search').blur ->
    $(this).animate({opacity: 0.75, width: '10px'}, 'fast')
