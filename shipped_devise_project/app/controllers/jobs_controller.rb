jobclass JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new #This will lead me to jobs#new 
     @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to user_path
    end
  end

  def show
  end

  def edit
    set_job
  end

  def update
    set_job
    if @job.update(job_params)
      redirect_to user_path
    end
  end

  def destroy
    set_job
    if @job.destroy
      redirect_to user_path
    end
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:job_name, :job_description, :origin, :destination, :containers_needed, :cost)
  end
end
