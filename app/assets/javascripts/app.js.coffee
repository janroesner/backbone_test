define ['collections/books_collection', 'handlebars', 'views/test_view'], (BooksCollection, Handlebars, TestView) ->

  class App extends Backbone.Model

    initialize: ()->
      @books = new BooksCollection()
      @listenTo @books, 'sync', @doStuff

    start: ->
      @books.fetch()

    doStuff: ->
      console.log "!!!!!!!!!!! synced: ", @books.models
      testView = new TestView()

  App
