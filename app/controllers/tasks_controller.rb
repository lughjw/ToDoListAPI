class TasksController < ApplicationController
  # /tasks
  def index
    render json: Task.all
  end

  # TODO: probably won't be used
  # /tasks/:id
  def show
    puts params
    task = Task.find_by(id: params[:id])
    if task != nil
      render json: task
    else
      render json: {error: "Task does not exist"}
    end
  end

  # /tasks/new
  def new
    puts json: params
  end

  def edit
  end

  def create
  end

  def update
  end

  def delete
  end
end
