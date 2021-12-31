class Review < ApplicationRecord
  belongs_to :novel
  belongs_to :customer

end
