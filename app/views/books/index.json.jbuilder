json.array!(@books) do |book|
  json.extract! book, :id, :name, :author, :age
  json.url book_url(book, format: :json)
end
