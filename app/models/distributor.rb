class Distributor < ApplicationRecord
  has_many :novels
  has_many :writers, through: :novels
end
