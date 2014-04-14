class SessionsController < ApplicationController

  def create
    if Authorizer.authenticate(env['omniauth.auth'])
      session[:current_user_id] = true
      flash['alert-box success'] = "Logged in."
      redirect_to new_event_path
    else
      flash['alert-box alert'] = "Error! Unable to log in."
      redirect_to root_path
    end
  end

  def index
    session[:current_user_id] = nil
  end

end
