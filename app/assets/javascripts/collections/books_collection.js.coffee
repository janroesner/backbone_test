define ['backbone', '../models/book'], (Backbone, Book)->

  class BooksCollection extends Backbone.Collection
    model: Book

    url: '/books'

    persist: (object)->
      @add(object).save()

  BooksCollection
