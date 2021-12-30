class Emoployee < ApplicationRecord
  has_many :pictures, as: :imageable
end
