define ['backbone', 'helpers/global', 'templates/books/form'], (Backbone, Global, template)->

  class BookForm extends Backbone.View

    template: JST['books/form']

    events:
      'click #submit': 'addBookToCollection'
      'click #cancel': 'cancel'

    addBookToCollection: (e)->
      e.preventDefault()
      @collection.persist @serialize()
      Global().mainRouter.navigate '', trigger: true

    cancel: (e)->
      e.preventDefault()
      Global().mainRouter.navigate '', trigger: true

    serialize: ->
      name:   @$el.find('#name').val()
      author: @$el.find('#author').val()
      age:    @$el.find('#age').val()

    render: ->
      @$el.html @template()

      @

  BookForm
