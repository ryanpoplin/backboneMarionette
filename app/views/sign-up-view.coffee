module.exports = class SignUpView extends Backbone.Marionette.ItemView
  id: 'sign-up-view'
  template: 'views/templates/signup'
  events: ->
    'click .sign-up': 'signup'
  signup = ->
    username = $('.sign-up-username').val()
    email = $('.sign-up-email').val()
    password = $('.sign-up-password').val()
    console.log username
    console.log email
    console.log password
    user = new Parse.User()
    user.set 'username', username
    user.set 'email', email
    user.set 'password', password
    user.signUp null,
      success: (user) ->
        console.log user.id
      error: (user, error) ->
        alert 'Error: ' + error.code + ' ' + error.message