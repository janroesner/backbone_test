define ['backbone', '../models/book'], (Backbone, Book)->

  class BooksCollection extends Backbone.Collection
    model: Book

    url: '/books'

    persist: (data)->
      book = new Book(data)
      book.save()
      @add book

  BooksCollection
