window.app ||= {}

class BooksCollection extends Backbone.Collection
  model: app.Book
  url: '/books'

app.BooksCollection = BooksCollection
