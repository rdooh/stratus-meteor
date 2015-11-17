Template.topNavbar.rendered = ->
  # FIXED TOP NAVBAR OPTION
  # Uncomment this if you want to have fixed top navbar
  # $('body').addClass('fixed-nav');
  # $(".navbar-static-top").removeClass('navbar-static-top').addClass('navbar-fixed-top');
  return

Template.topNavbar.events 'click #navbar-minimalize': (event) ->
  event.preventDefault()
  # Toggle special class
  $('body').toggleClass 'mini-navbar'
  # Enable smoothly hide/show menu
  if !$('body').hasClass('mini-navbar') or $('body').hasClass('body-small')
    # Hide menu in order to smoothly turn on when maximize menu
    $('#side-menu').hide()
    # For smoothly turn on menu
    setTimeout (->
      $('#side-menu').fadeIn 500
      return
    ), 100
  else if $('body').hasClass('fixed-sidebar')
    $('#side-menu').hide()
    setTimeout (->
      $('#side-menu').fadeIn 500
      return
    ), 300
  else
    # Remove all inline style from jquery fadeIn function to reset menu state
    $('#side-menu').removeAttr 'style'
  return
