class UserDetailsController < ApplicationController
  def index
    @users = UserDetail.all
  end

  def new
    @user = UserDetail.new
  end

  def create
    # byebug
    @user = UserDetail.new(user_params)
    # if @user.save
    #   redirect_to user_details_path(@user)
    # else
    #   render "new"
    # end
    respond_to do |format|

      if @user.save
        format.html{redirect_to user_details_path(@user)}
        # format.json { render :show, status: :created, location: @user }
      else
        format.html{render :new}
        # format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @user = UserDetail.find(params[:id])

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
