define ['backbone', 'routers/main_router'], (Backbone, MainRouter) ->

  class App extends Backbone.Model

    initialize: ->
      @mainRouter = new MainRouter()
      Backbone.history.start
        pushState: true

    run: ->
      @mainRouter.navigate '/',
        trigger: true

  App
