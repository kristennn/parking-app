class ParkingsController < ApplicationController

  def new
    @parking = Parking.new
  end

  def create
    @parking = Parking.new(:parking_type => "guest", :start_at => Time.now)
    @parking.save!

    redirect_to parking_path(@parking)
  end

  def show
    @parking = Parking.find(params[:id])
  end

end
