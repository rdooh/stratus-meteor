Router.configure
  layoutTemplate: 'mainLayout'
  notFoundTemplate: 'notFound'
#
# Example pages routes
#
Router.route '/pageOne', ->
  @render 'pageOne'
  return
Router.route '/pageTwo', ->
  @render 'pageTwo'
  return
Router.route '/', ->
  Router.go 'pageOne'
  return
