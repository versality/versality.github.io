---
---

$ ->
  smoothScroll.init();

  header = $('header')
  index  = $('#index-content')
  tech   = $('.tech')

  # Update header current position when scrolled past TOP tech
  tech.waypoint () ->
    navHeader = $('#nav-header')
    navHeader.find('a').css('color', 'white')
    navHeader.find('.' + $(this).attr('id')).css('color', '#C83232')
    header.css('top', '0')
  ,
    offset: 50

  # Update header current position when scrolled past BOTTOM tech
  tech.waypoint () ->
    navHeader = $('#nav-header')
    navHeader.find('a').css('color', 'white')
    navHeader.find('.' + $(this).attr('id')).css('color', '#C83232')
    header.css('top', '0')
  ,
    offset: () ->
      return -$(this).height()

  # Hide header when reaches top of the page
  index.waypoint () ->
    header.css('top', '-100px')

  index.waypoint () ->
    header.css('top', '-100px')
  ,
    offset: () ->
      return -$(this).height()