class Author < ApplicationRecord
  # has_many macro: can have plural relationship
  has_many :books

end
