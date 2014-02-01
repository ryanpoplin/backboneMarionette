application = require 'application'
FooterView = require 'views/footer-view'
HomeView = require 'views/home-view'
SignUpView = require 'views/sign-up-view'

module.exports = class Router extends Backbone.Router

	routes:
    '': 'home'
    'signup': 'signup'
    # 'profile': 'profile'

  home: =>
    view = new HomeView()
    application.layout.content.show(view)
    application.layout.footer.show(
      new FooterView
        model: new Backbone.Model
          name: 'home'
          time: moment().format('MMMM Do YYYY, h:mm:ss a')
      )

  signup: =>
    view = new SignUpView()
    application.layout.content.show(view)
    application.layout.footer.show(
      new FooterView
        model: new Backbone.Model
          name: 'about'
          time: moment().format('MMMM Do YYYY, h:mm:ss a')
    )