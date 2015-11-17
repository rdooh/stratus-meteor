@Projects = new (Mongo.Collection)('projects')

# this allows insertion from the browser as long as it has text
# comment this out when you are done adding data
Projects.allow({
  insert: (userId, doc)->
    doc.text?
  })

if Meteor.isServer
	Meteor.publish "projects", ->
    Projects.find()



if Meteor.isClient
  # This code only runs on the client
  Meteor.subscribe "projects"
  Template.projectList.helpers projects: ->
    Projects.find {}
