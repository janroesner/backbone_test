define ['handlebars', 'backbone', 'templates/books/index'], (Handlebars, Backbone)->

  class TestView extends Backbone.View

    initialize: ->
      console.log "init TestView: ", @template()

    template: JST['books/index']

  TestView
