class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    if !signed_in?
      redirect_to new_session_path
    end
  end

  def signed_in?
    session[:current_email].present?
  end

  def create_new_session(input)
    session[:current_email] = input
  end

  def current_user_email
    session[:current_email]
  end
end
