class Author < ApplicationRecord
  # has_many macro: can have plural relationship
  # author.books
  # author.books<< ()  shiovel a new book 
  # author.books.build(hash of attributes)
  # author.books.create(hash of attributes)
  has_many :books

end
