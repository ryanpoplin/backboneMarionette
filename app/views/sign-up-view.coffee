module.exports = class SignUpView extends Backbone.Marionette.ItemView
  id: 'sign-up-view'
  template: 'views/templates/signup'
  events:
    'click .sign-up': 'signup'
  signup = ->
    console.log 'signup...'
    username = undefined
    email = undefined
    password = undefined
    username = $('.sign-up-username')
    email = $('.sign-up-email')
    password = $('.sign-up-password')
    console.log username, email, password
    user = new Parse.User()
    user.set 'username', username
    user.set 'email', email
    user.set 'password', password
    user.signUp null,
      success: (user) ->
        console.log user.id
      error: (user, error) ->
        console.log 'Error: ' + error.code + ' ' + error.message