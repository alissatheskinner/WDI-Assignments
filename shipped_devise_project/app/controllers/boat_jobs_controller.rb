class BoatJobsController < ApplicationController
  def index
    @boat_jobs = BoatJob.all
  end

  def new #Will send user to boats#new where New Boat Form will be 
   @boat_job = BoatJob.new
  end

  def create
    @boat_job = BoatJob.new(boat_job_params)
      if @boat_job.save
        redirect_to user_path
      end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    set_boat_jobs
    if @boat_job.destroy
      redirect_to user_path
    end
  end

   private

  def set_boat_jobs
    @boat_jobs = BoatJob.find(params[:id])
  end

  def boat_job_params
    params.require(:boat_job).permit(:boat_id, :job_id)
  end
end
