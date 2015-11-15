Template.iboxTools.events
  'click .collapse-link': (event) ->
    element = $(event.target)
    ibox = element.closest('div.ibox')
    button = element.closest('i')
    content = ibox.find('div.ibox-content')
    content.slideToggle 200
    button.toggleClass('fa-chevron-up').toggleClass 'fa-chevron-down'
    ibox.toggleClass('').toggleClass 'border-bottom'
    setTimeout (->
      ibox.resize()
      ibox.find('[id^=map-]').resize()
      return
    ), 50
    return
  'click .close-link': (event) ->
    element = $(event.target)
    content = element.closest('div.ibox')
    content.remove()
    return
