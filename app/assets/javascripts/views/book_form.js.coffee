define ['backbone', 'templates/books/form'], (Backbone, template)->

  class BookForm extends Backbone.View

    template: JST['books/form']

    render: ->
      @$el.html @template()

      @

  BookForm
