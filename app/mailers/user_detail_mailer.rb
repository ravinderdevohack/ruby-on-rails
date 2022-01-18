class UserDetailMailer < ApplicationMailer
  def new_user_detail_email(user)
    # @user = params[:user_detail]
    @user = user
    # byebug
    # email_address = @user.email
    mail(from: "7532970388sac@gmail.com", to: "ravinder@devohack.com", subject: "Test Email")
  end
end


