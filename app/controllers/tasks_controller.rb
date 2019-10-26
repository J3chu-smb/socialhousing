class TasksController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @tasks = Task.all
  end

  def show
  end

  def destroy
    @task.destroy
  end
end
