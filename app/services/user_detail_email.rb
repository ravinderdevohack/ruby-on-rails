class UserDetailEmail
  def initialize(user)
    @user = user
  end

  def send_email
    UserDetailMailer.new_user_detail_email(@user).deliver_now
  end
end

