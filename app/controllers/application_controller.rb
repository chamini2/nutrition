class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_not_approved

  protected
    def authenticate_user!
      if user_signed_in?
        super
      else
        redirect_to root_url, :notice => 'Debes haber iniciado sesión'
      end
    end

  private
    def set_not_approved
      @not_approved = Snack.approved(false).count
      @not_approved += Activity.approved(false).count
    end
end
