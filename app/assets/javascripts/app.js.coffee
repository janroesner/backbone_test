define ['backbone', 'routers/main_router', 'helpers/global'], (Backbone, MainRouter, Global) ->

  class App extends Backbone.Model

    initialize: ->
      Global().mainRouter = new MainRouter()
      Backbone.history.start
        pushState: true

    run: ->
      if @should_run()
        Global().mainRouter.navigate '/',
          trigger: true

    should_run: ->
      !window.location.pathname.match /books/

  App
