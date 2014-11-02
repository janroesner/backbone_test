define ['backbone', 'views/books_collection_view'], (Backbone, BooksCollectionView)->

  class MainRouter extends Backbone.Router

    routes:
      '':      'home'
      'new':  'new'
      'edit': 'edit'
      'show': 'show'

    home: ->
      $('body').append (new BooksCollectionView()).el

    new: ->
      console.log "routing to new"

    edit: ->
      console.log "routing to edit"

    show: ->
      console.log "routing to show"

  MainRouter
