class WelcomeController < ApplicationController
  def index
    snacks = Snack.order(:name)
    activities = Activity.all
    activities_length = activities.length

    @pairs = []
    snacks.each do |snack|
      activity = activities[rand(activities_length)]
      pair = {snack: snack.name,
              calories: snack.calories,
              activity: activity.description.capitalize,
              quantity: (activity.calories * snack.calories).round,
              unit: activity.unit.downcase
             }
      @pairs.push(pair)
    end
  end
end
