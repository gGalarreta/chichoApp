class ActivitiesController < ApplicationController
	 layout "admin" 
  
  before_action :set_need, only: [:show, :edit, :update]

  def index
    @activities = Activity.all
  end

  def show
    if @activity.has_already_added? current_user
      redirect_to activities_path, alert: 'You has already been added to this activity'  
    else
      @activity.add_member current_user
      redirect_to activities_path, notice: 'You has been added correctly to this activity'  
    end
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new activity_params
    if @activity.save
      redirect_to activities_path, notice: 'Activity was successfully created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @activity.assign_attributes activity_params
    if @activity.save
      redirect_to activities_path, notice: 'Activity was successfully created'
    else
      render :edit
    end
  end

  private
  def activity_params
    params.require(:activity).permit(:name, :description, :show_time, :value, :place)
  end

  def set_need
    @activity = Activity.find params[:id]
  end
end
