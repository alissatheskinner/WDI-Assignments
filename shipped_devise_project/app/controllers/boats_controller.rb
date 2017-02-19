class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = current_user.boats.new(boat_params)
    if @boat.save
      redirect_to user_path
 
    end
  end

  def show
  end

  def edit
    set_boat
  end

  def update
    set_boat
    if @boat.update(boat_params)
      redirect_to user_path
    end
  end

  def destroy
    set_boat
    if @boat.destroy
      redirect_to user_path
    end
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:name_of_boat, :container_capacity, :location, :user_id)
  end

end

