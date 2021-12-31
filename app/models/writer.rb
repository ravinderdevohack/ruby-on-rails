class Writer < ApplicationRecord
  has_many :novels, -> { order(published_year: :desc)}
end
