class WelcomeController < ApplicationController
  def index
    snacks = Snack.approved.order(:name)
    activities = Activity.approved
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
end
