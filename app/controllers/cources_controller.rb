class CourcesController < ApplicationController
  # GET /cources
  def index
    @cources = Cource.all

    render 'index', formats: 'json', handlers: 'jbuilder'
  end

  # GET /cources/:name
  def show
    #@cource = Cource.joins(:spot).where(name: params[:name])
    #@cource = Cource.find_by(name: params[:name])
    @cource = Cource.find(params[:id])
    
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def search
    @cource = Cource.where name: params[:name]
    #@cource = Cource.find_by(name: params[:name])
    #@cource = Cource.find(params[:id])
    
    render 'search', formats: 'json', handlers: 'jbuilder'
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