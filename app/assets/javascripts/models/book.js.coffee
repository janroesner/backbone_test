define ['backbone'], (Backbone)->
  class Book extends Backbone.Model

    url: '/books'

  Book
