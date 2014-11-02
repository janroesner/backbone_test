define ['backbone', 'models/book', 'templates/books/book'], (Backbone, Book)->

  class BookView extends Backbone.View

    tagName: 'li'

    template: JST['books/book']

    render: ->
      @$el.html @template @model.attributes

      @

  BookView
