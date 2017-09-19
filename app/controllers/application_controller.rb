class ApplicationController < ActionController::Base
  # before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :null_session
  before_action :initialize_session

  protected

    def initialize_session
      session["init"] = true
    end
  end
