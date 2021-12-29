class AboutsController < ApplicationController
  def index

  end

  def new
    @user = User.new
  end

  def show
  end


  def create
    render plain: params[@user]
  end
end
