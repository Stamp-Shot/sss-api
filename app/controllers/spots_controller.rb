class SpotsController < ApplicationController
  #GET spots
  def index
    @spots = Spot.all

    render json: @spots
  end

  #GET spots/:id
  def show
    @spot=Spot.find(params[:id])

    render json: @spot
  end

  def create
    @spot = Spot.new(spot_params)

    if @spot.save
      render json: @spot, status: :created, location: @spot_new
    else
      render json: @spot.errors, status: :unprocessable_entity
    end
  end

  private
  # Only allow a trusted parameter "white list" through.
  def spot_params
    params.fetch(:spot, {}).permit(:cource_id, :name, :GPS_X, :GPS_Y, :image)
  end
end
