class FinishesController < ApplicationController
    # GET /cources
    def index
      @finishes = Finish.all

      render 'index', formats: 'json', handlers: 'jbuilder'
    end
  
    # GET /cources/:name
    def show
      #@cource = Cource.joins(:spot).where(name: params[:name])
      #@cource = Cource.find_by(name: params[:name])
      @finish = Finish.find(params[:id])
      
      render 'show', formats: 'json', handlers: 'jbuilder'
    end
  
    # POST /cources
    def create
      @finish = Finish.new(finish_params)
  
      if @finish.save
        render json: @finish, status: :created, location: @finish_new
      else
        render json: @finish.errors, status: :unprocessable_entity
      end
    end
  
    private
    # Only allow a trusted parameter "white list" through.
    def cource_params
      params.fetch(:finish, {}).permit(:user_id, :cource_id, :spot_id)
    end
  end