define ['backbone', 'routers/main_router'], (Backbone, MainRouter) ->

  class App extends Backbone.Model

    initialize: ->
      @mainRouter = new MainRouter()
      Backbone.history.start
        pushState: true

    run: ->
      if @should_run()
        @mainRouter.navigate '/',
          trigger: true

    should_run: ->
      !window.location.pathname.match /books/

  App
