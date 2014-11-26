class SnacksController < ApplicationController
  before_action :set_snack, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @snacks = Snack.all
    respond_with(@snacks)
  end

  def show
    activities = Activity.approved

    @tuples = []
    activities.each do |activity|
      tuple = { activity: activity.description.capitalize,
                quantity: (activity.calories * @snack.calories).round,
                unit: activity.unit.downcase
              }
      @tuples.push(tuple)
    end
  end

  def new
    @snack = Snack.new
    respond_with(@snack)
  end

  def edit
  end

  def create
    @snack = Snack.new(snack_params)
    @snack.save
    respond_with(@snack)
  end

  def update
    @snack.update(snack_params)
    respond_with(@snack)
  end

  def destroy
    @snack.destroy
    respond_with(@snack)
  end

  private
    def set_snack
      @snack = Snack.find(params[:id])
    end

    def snack_params
      params.require(:snack).permit(:name, :calories)
    end
end
