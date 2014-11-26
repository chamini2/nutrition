class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :edit, :update, :destroy]

  respond_to :html

  def index
    @activities = Activity.all
    respond_with(@activities)
  end

  def show
    redirect_to(root_url)
  end

  def new
    @activity = Activity.new
    respond_with(@activity)
  end

  def edit
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.name = @activity.name.capitalize
    @activity.save
    redirect_to root_url, :notice => '¡Gracias por tu aporte!, éste será validado y aprobado por nuestros administradores'
  end

  def update
    @activity.update(activity_params)
    redirect_to(entries_path)
  end

  def destroy
    @activity.destroy
    redirect_to(entries_path)
  end

  def approve_it
    @activity = Activity.find(params[:activity_id])
    @activity.approved = true
    @activity.save
    redirect_to(entries_path)
  end

  private
    def set_activity
      @activity = Activity.find(params[:id])
    end

    def activity_params
      params.require(:activity).permit(:description, :calories, :unit)
    end
end
