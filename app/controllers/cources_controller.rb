class CourcesController < ApplicationController
  # GET /cources
  def index
    @cources = Cource.all

    render json: @cources
  end

  # GET /cources/:name
  def show
    #@cource = Cource.joins(:spot).where(spot: params[:id])
    #@cource = Cource.find_by(name: params[:name])
    @cource = Cource.find(params[:id])
    
    render 'spot', formats: 'json', handlers: 'jbuilder'
  end

  # POST /cources
  def create
    @cource = Cource.new(cource_params)

    if @cource.save
      render json: @cource, status: :created, location: @cource_new
    else
      render json: @cource.errors, status: :unprocessable_entity
    end
  end

  private
  # Only allow a trusted parameter "white list" through.
  def cource_params
    params.fetch(:cource, {}).permit(:name, :spot_num)
  end
end