class UserDetail < ApplicationRecord
  # validates :first_name, :last_name, :email, :phone, :bio, :address, :password, presence: true
  validates :first_name, :last_name, format: {with: /\A[A-Za-z]{3,}\z/, message:' must be greater than 3 character'}
  validates :phone, format: {with: /\A[0-9]{10}\z/, message: ' must be of 10 digits'}
  validates :alter_phone, format: {with: /\A[0-9]{10}\z/, message: ' must be of 10 digits'}, allow_blank: true
  validates :bio, length: {minimum: 10}
  validates :address, length: {minimum: 20}
  validates :email, format: {with: /\A\w[\w+.\-_]+@[A-z]+\.[A-z]+\z/, message: 'enter valid email address'}
  validates :alter_email, format: {with: /\A\w[\w+.\-_]+@[A-z]+\.[A-z]+\z/, message: 'enter valid email address'}, allow_blank: true
  validates :password, format: {with: /\A(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}\z/, message: ' must have one upper letter, one lower letter, one digit, one special symbol and minimum length of 6 character' } 
  validates :pan_no, presence: {message: 'must be present'}, if: :check_user?
  validates :pan_no, format: {with: /\A[A-Z]{5}[0-9]{4}[A-Z]{1}\z/ }, allow_blank: true
  validates :aadhar_no, presence: {message: 'must be present'}, if: :check_user?
  validates :aadhar_no, format: {with: /\A[0-9]{12}\z/}, allow_blank: true

  def check_user?
    user_type == 'customer'

  end

  enum user_type: {customer: 0, admin: 1}

end
