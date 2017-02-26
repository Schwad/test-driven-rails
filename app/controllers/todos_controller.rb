class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = Todo.where(email: session[:current_email])
  end

  def new
    @todo = Todo.new
  end

  def create
    new_todo = Todo.new(permitted_params.merge(email: session[:current_email]))
    new_todo.save
    redirect_to todos_path
  end

  def show
  end

  private

  def permitted_params
    params.require(:todo).permit(:title)
  end
end
