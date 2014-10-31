define ['collections/books_collection'], (BooksCollection) ->

  class App extends Backbone.Model

    initialize: ()->
      @books = new BooksCollection()
      @listenTo @books, 'sync', @doStuff

    start: ->
      @books.fetch()

    doStuff: ->
      console.log "!!!!!!!!!!! synced"

  App
