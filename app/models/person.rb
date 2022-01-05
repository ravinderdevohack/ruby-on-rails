class Person < ApplicationRecord
  validates :name, :terms_of_service, :email,  presence: true
  validates :terms_of_service, acceptance: true
  validates :eamil, uniqueness: true,  format: {with: /\A[^\s@]+@[^\d\s@]+\.[^\s\d@]+\z/}
end

