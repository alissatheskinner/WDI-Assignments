class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@boats = current_user.boats
  	@jobs = Job.all
  	@boat_job = BoatJob.new
  end
end
