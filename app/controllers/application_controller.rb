class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :check_layout

  protected

  def check_layout
    if devise_controller? && resource_name == :user && action_name == "new"
      "Login"
    else
      "application"
    end
  end
end
