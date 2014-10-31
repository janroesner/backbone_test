define ['backbone', 'templates/books/index'], (Backbone)->

  class TestView extends Backbone.View

    initialize: ->
      console.log "init TestView: ", @template()

    template: HandlebarsTemplates['books/index']

  TestView
