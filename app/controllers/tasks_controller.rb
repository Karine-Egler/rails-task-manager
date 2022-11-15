class TasksController < ApplicationController
  before_action :set_task, only: [:show]

  def index
    @tasks = Task.all
  end

  def show
  end

  private

  def task_params
    params.require(:restaurant).permit(:name, :rating, :address)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
