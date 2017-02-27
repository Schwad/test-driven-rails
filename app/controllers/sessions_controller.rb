class SessionsController < ApplicationController

  def new

  end

  def create
    create_new_session(params[:session][:email])
    redirect_to root_path
  end

end
