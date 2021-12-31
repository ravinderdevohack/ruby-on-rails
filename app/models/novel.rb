class Novel < ApplicationRecord
  belongs_to :writer 
  belongs_to :distributor
  has_many :reviews
  has_and_belongs_to_many :orders, join_table: 'novels_orders'

  
end
