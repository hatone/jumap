require "pp"
class PlotController < ApplicationController
  def index
  end

  def create
    lat = params[:lat]
    long = params[:long]
    msg = params[:message]

    Spot.append(
        :lat => lat,
        :long => long,
        :msg => msg
        )
    redirect_to root_path 
  end

  def new

  end

  def edit

  end

  def show
  render :text => "show"
  end

  def update

  end

  def destroy
  end
end
