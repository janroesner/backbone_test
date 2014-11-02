define [
  'backbone',
  'views/books_collection_view',
  'views/book_form'
], (Backbone, BooksCollectionView, BookForm)->

  class MainRouter extends Backbone.Router

    routes:
      '':      'home'
      'new':  'new'
      'edit': 'edit'
      'show': 'show'

    home: ->
      $('body').html (new BooksCollectionView()).el

    new: ->
      console.log "routing to new"
      $('body').html (new BookForm).render().el

    edit: ->
      console.log "routing to edit"

    show: ->
      console.log "routing to show"

  MainRouter
