define ['backbone', 'models/book', 'templates/books/show'], (Backbone, Book)->

  class BookView extends Backbone.View

    tagName: 'li'

    template: JST['books/show']

    render: =>
      @$el.html @template @model.attributes

      @

  BookView
