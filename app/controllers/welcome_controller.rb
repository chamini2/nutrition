class WelcomeController < ApplicationController
  def index
    @snacks = Snack.order(:name)
  end
end
