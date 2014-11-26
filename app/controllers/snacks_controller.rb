class SnacksController < ApplicationController
  before_action :set_snack, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :edit, :update, :destroy]

  respond_to :html

  def index
    @snacks = Snack.all
    respond_with(@snacks)
  end

  def show
    if @snack.approved then
      activities = Activity.approved(true)

      @tuples = []
      activities.each do |activity|
        tuple = { activity: activity.description.capitalize,
                  quantity: (activity.calories * @snack.calories).round,
                  unit: activity.unit.downcase
                }
        @tuples.push(tuple)
      end
    else
      redirect_to(root_url)
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
    @snack.name = @snack.name.capitalize
    @snack.save
    redirect_to root_url, :notice => '¡Gracias por tu aporte!, éste será validado y aprobado por nuestros administradores'
  end

  def update
    @snack.update(snack_params)
    redirect_to(entries_path)
  end

  def destroy
    @snack.destroy
    redirect_to(entries_path)
  end

  def approve_it
    @snack = Snack.find(params[:snack_id])
    @snack.approved = true
    @snack.save
    redirect_to(entries_path)
  end

  private
    def set_snack
      @snack = Snack.find(params[:id])
    end

    def snack_params
      params.require(:snack).permit(:name, :calories)
    end
end
