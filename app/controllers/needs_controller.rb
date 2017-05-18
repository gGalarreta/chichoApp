class NeedsController < ApplicationController
  layout "admin" 
  
  before_action :set_need, only: [:edit, :update]

  def index
    @needs = Need.all
  end

  def new
    @need = Need.new
  end

  def create
    @need = Need.new need_params
    if @need.save
      redirect_to needs_path, notice: 'Need was successfully created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @need.assign_attributes need_params
    if @need.save
      redirect_to needs_path, notice: 'Need was successfully created'
    else
      render :edit
    end
  end

  private
  def need_params
    params.require(:need).permit(:name, :description, :sales_place, :value)
  end

  def set_need
    @need = Need.find params[:id]
  end
end
