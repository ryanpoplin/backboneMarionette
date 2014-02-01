application = require 'application'

$ ->

  Parse.initialize("1pfoAtpal7tFGlDjYeLXHQ4v7UlOTBAEM53JtRJY", "qtXKYxUWkrA68H2XWpl92IWgdOUyArXcZkanic2j");

  application.initialize()
  ###
  object = {}
  _.extend object, Backbone.Events
  object.on 'console.log', (msg) ->
  	console.log 'Triggered ' + msg
  object.trigger 'console.log', 'an event'

  dispatcher = _.clone Backbone.Events
  console.log dispatcher
  ###
  
  # object.on event, callback, [context] Alias: bind...
