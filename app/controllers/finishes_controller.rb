class FinishesController < ApplicationController
  # GET /courses
  def index
    @finishes = Finish.all

    render 'index', formats: 'json', handlers: 'jbuilder'
  end

  # GET /finishes/:user_id/:course_id/spot_id
  def show
    user = params[:user_id]
    user.to_i
    course = params[:course_id]
    course.to_i
    spot = params[:spot_id]
    spot.to_i
    @finish = Finish.where "user_id = ? and course_id = ? and spot_id = ?",user,course,spot
    if @finish != []
      @result = true
      render 'show', formats: 'json', handlers: 'jbuilder'
    else
      @result = false
      render 'show', formats: 'json', handlers: 'jbuilder'
    end
  end

  # POST /courses
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
  def finish_params
    params.fetch(:finish, {}).permit(:user_id, :course_id, :spot_id)
  end
end