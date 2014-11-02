define [
  'underscore',
  'handlebars',
  'backbone',
  'collections/books_collection',
  'models/book',
  'views/book_view',
  'templates/books/index'],
(_, Handlebars, Backbone, BooksCollection, Book, BookView)->

  class BooksCollectionView extends Backbone.View
    model: Book

    collection:
      @collection = new BooksCollection()

    initialize: ->
      @listenTo @collection, 'sync', @render
      @collection.fetch()

    template: JST['books/index']

    render: ->
      @$el.html @template()
      @renderSubViews()

      @

    renderSubViews: ->
      _.map @collection.models, (model, idx)=>
        @$el.find('ul').append (new BookView(model: model)).render().el

  BooksCollectionView
