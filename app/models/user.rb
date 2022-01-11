class User < ApplicationRecord
  validates :name, presence: true

  before_create do
    self.name = name.upcase unless name.blank?
  end

end

