class Subscription < ApplicationRecord
  belongs_to :bank_account, 
  before_create :record_singup

  private
    def record_singup
      self.signup_on = Date.today
    end

end
