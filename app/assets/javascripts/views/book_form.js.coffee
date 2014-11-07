define ['backbone', 'helpers/global', 'templates/books/form'], (Backbone, Global, Book, template)->

  class BookForm extends Backbone.View

    template: JST['books/form']

    events:
      'click #submit': 'addBookToCollection'

    addBookToCollection: (e)->
      e.preventDefault()
      @collection.persist @serialize()
      Global().mainRouter.navigate '/', trigger: true

    serialize: ->
      name:   @$el.find('#name').val()
      author: @$el.find('#author').val()
      age:    @$el.find('#age').val()

    render: ->
      @$el.html @template()

      @

  BookForm
