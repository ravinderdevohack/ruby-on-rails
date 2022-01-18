class UserDetailsController < ApplicationController
  def index
    @users = UserDetail.all.order(:id)
  end

  def new
    @user = UserDetail.new
    @action = 'new'
  end

  def create
    @user = UserDetail.new(user_params)
    # byebug
    if @user.save
      # UserDetailMailer.with(user_detail: @user).new_user_detail_email.deliver_now
      # UserDetailMailer.new_user_detail_email(@user).deliver_now
      # UserDetailEmail.new(first_name: user_params[:first_name], last_name: user_params[:last_name], email: user_params[:email], phone: user_params[:phone]).send_email
      UserDetailEmail.new(@user).send_email
      redirect_to user_details_path
    else
      render "new"
    end
 
  end

  def edit
    @user = UserDetail.find(params[:id])
    @action = 'edit'

  end

  def update
    @user = UserDetail.find(params[:id])
    if @user.update(user_params)
      redirect_to (@user)
    else
      render "edit"
    end
  end


  def show
    @user = UserDetail.find(params[:id])
    # render json: @user.to_json(only: [:id, :first_name, :last_name, :email])
    render json: @user
  end

  def destroy
    @user = UserDetail.find(params[:id])
    @user.destroy

    redirect_to user_details_path
  end

  private
    def user_params
      params.require(:user_detail).permit(:user_type, :first_name, :last_name, :phone, :alter_phone, :email, :alter_email, :aadhar_no, :address,:bio, :password, :pan_no)
    end

end
# 
