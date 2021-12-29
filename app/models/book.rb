class Book < ApplicationRecord
  # belongs_to macro: relationship must be singular

  # book.author / read the author that the book belong to
  # book.author= /set the author that the book belong to
  # book.build_author(hash of attirbutes)
  # book.create_author(hash of attributes)
  belongs_to :author
end
