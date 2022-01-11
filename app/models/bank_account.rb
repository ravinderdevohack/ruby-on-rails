class BankAccount < ApplicationRecord
  has_one :subscription
  validates :name, :number, presence: true

  before_validation :add_number, on: :create 
  def add_number
      self.number = number.gsub(/[^0-9]/,"") if attribute_present?("number")
  end  
end
