class WelcomeController < ApplicationController
  before_action :authenticate_user!, only: [:approve]

  def index
    snacks = Snack.approved(true).order(:name)
    activities = Activity.approved(true)
    activities_length = activities.length

    @tuples = []
    snacks.each do |snack|
      activity = activities[rand(activities_length)]
      tuple = { snack: snack,
                name: snack.name,
                calories: snack.calories,
                activity: activity.description.capitalize,
                quantity: (snack.calories / activity.calories).round,
                unit: activity.unit.downcase,
              }
      @tuples.push(tuple)
    end
  end

  def approve
    @activities = Activity.order(:approved)
    @snacks = Snack.order(:approved)
  end

end
