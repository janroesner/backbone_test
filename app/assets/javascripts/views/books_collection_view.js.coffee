define [
  'underscore',
  'handlebars',
  'backbone',
  'collections/books_collection',
  'models/book',
  'views/book_view',
  'templates/books/index',
  'helpers/global'],
(_, Handlebars, Backbone, BooksCollection, Book, BookView, template, Global)->

  class BooksCollectionView extends Backbone.View
    model: Book

    collection:
      @collection = new BooksCollection()

    template: JST['books/index']

    events:
      'click .new-book': 'new'

    initialize: ->
      @listenTo @collection, 'sync, add', @render
      @collection.fetch()

    new: (e)->
      e.preventDefault()
      Global().mainRouter.navigate '/new',
        trigger: true

    render: ->
      @$el.html @template()
      @renderSubViews()

      @

    renderSubViews: ->
      _.map @collection.models, (model, idx)=>
        @$el.find('ul').append (new BookView(model: model)).render().el

  BooksCollectionView
