class Book < ApplicationRecord
  # belongs_to macro: relationship must be singular
  belongs_to :author
end
