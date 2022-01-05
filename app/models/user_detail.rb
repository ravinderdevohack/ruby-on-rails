class UserDetail < ApplicationRecord
  validates :first_name, :last_name, :email, :phone, :bio, :address, :password, presence: true
  validates :first_name, :last_name, format: {with: /\A[A-Za-z]{3,}\z/, message:'name must be greater than 3 character'}
  validates :phone, :alter_phone, format: {with: /\A[0-9]{10}\z/, message: 'number must be of 10 digits'}
  validates :bio, length: {minimum: 30}
  validates :address, length: {minimum: 20}
  validates :email, :alter_email, format: {with: /\A\w[\w+.\-_]+@[A-z]+\.[A-z]+\z/, message: 'enter valid email address'}
  validates :password, format: {with: /\A(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}\z/, message: 'password must have one upper letter, one lower letter, one digit, one special symbol and minimum length of 6 character' } 
  validates :pan_no, message: 'enter pan_no for customer', presence: true, if: :check_user
  validates :pan_no, format: {with: /\A[A-Z]{5}[0-9]{4}[A-Z]{1}\z/ },
  validates :aadhar_no, message: 'enter aadhar_no for customer', presence: true, if: :check_user
  validates :aadhar_no, format: {with: /\A[0-9]{12}\z/} 

  def check_user
    user_type == 'customer'

  end

  enum user_type: {customer: 0, admin: 1}

end
