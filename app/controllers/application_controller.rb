class ApplicationController < ActionController::Base

  include SessionsHelper

  private

  def current_user
    @current_user = @current_user || User.find(session[:user_id])
  end
end

