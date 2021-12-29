class DonationsController < ApplicationController
  def index

    @donations = Donation.all
  end

  def new
    @donation = Donation.new
  end
 
  def create
    # @donation = Donation.new(params[:donation])
    @donation = Donation.new(donation_params)
    byebug
    # if @donation.save
      # redirect_to donation_path(donation_params)  #show page
    # else
      # render :new
    # end
  end

  def show
  end

  def edit
  end

  private

  def donation_params  # strong params: permit fields being submitted
    params.require(:donation).permit(:user, :organization, :amount, :date)
  end
end
