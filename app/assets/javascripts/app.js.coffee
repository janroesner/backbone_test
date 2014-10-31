define ['collections/books_collection', 'handlebars', 'views/books_collection_view'], (BooksCollection, Handlebars, BooksCollectionView) ->

  class App

    render: ->
      $('body').append (new BooksCollectionView()).el

      @

  App
