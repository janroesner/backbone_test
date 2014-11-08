define [
  'backbone',
  'views/books_collection_view',
  'views/book_form'
], (Backbone, BooksCollectionView, BookForm)->

  class MainRouter extends Backbone.Router

    routes:
      '':     'home'
      'new':  'new'
      'edit': 'edit'
      'show': 'show'

    home: ->
      $('body').html @getBooksCollectionView().el
      @getBooksCollectionView().delegateEvents()

    new: ->
      $('body').html (new BookForm(collection: @getBooksCollectionView().collection)).render().el

    edit: ->
      console.log "routing to edit"

    show: ->
      console.log "routing to show"

    # helpers

    getBooksCollectionView: ->
      @booksCollectionView ||= (new BooksCollectionView())

  MainRouter
