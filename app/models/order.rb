class Order < ApplicationRecord
  belongs_to :customer
  has_and_belongs_to_many :novels, join_table: 'novels_orders'

  enum status: {shipped: 1, being_packed: 0, complete: 2, canceled:3}
end
