class WritersController < ApplicationController
  def index
    @writers = Writer.all
  end

  def show 
    @writer = Writer.find(params[:id])
    render json: @writer, status: 200
    # render json: @writer

  end
end
