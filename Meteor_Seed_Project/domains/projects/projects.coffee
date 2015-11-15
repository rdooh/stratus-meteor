Projects = new (Mongo.Collection)('projects')
if Meteor.isClient
  # This code only runs on the client
  Template.projectList.helpers projects: ->
    Projects.find {}
