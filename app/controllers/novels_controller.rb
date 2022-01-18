class NovelsController < ApplicationController
  def index
    @novels = Novel.all
  end

  def show
    @novel = Novel.find(params[:id])
    render json: @novel, status: 200
    # render json: @novel
  end

end
