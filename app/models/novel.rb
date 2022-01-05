class Novel < ApplicationRecord
  belongs_to :writer 
  belongs_to :distributor
  has_many :reviews
  has_and_belongs_to_many :orders, join_table: 'novels_orders'

  scope :in_print, -> {where(out_of_print: false)}
  scope :out_of_print, ->{where(out_of_print: true)}
  
  
end
