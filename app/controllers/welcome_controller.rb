class WelcomeController < ApplicationController
  def index
    snacks = Snack.order(:name)
    activities = Activity.all
    activities_length = activities.length

    @tuples = []
    snacks.each do |snack|
      activity = activities[rand(activities_length)]
      tuple = { snack: snack,
                name: snack.name,
                calories: snack.calories,
                activity: activity.description.capitalize,
                quantity: (activity.calories * snack.calories).round,
                unit: activity.unit.downcase,
              }
      @tuples.push(tuple)
    end
  end
end
