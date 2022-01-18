# Preview all emails at http://localhost:3000/rails/mailers/user_detail_mailer
class UserDetailMailerPreview < ActionMailer::Preview
  def new_user_detail_email
    user = UserDetail.new(first_name: 'Satyam', last_name: 'Sharma', phone: '1236547890')

    UserDetailMailer.with(user_detail: user).new_user_detail_email
  end
end
