class TasksController < ApplicationController


  def new
    @task=Task.new
    @url={:controller => :tasks ,:action => :create}
  end

  def index
    @task=Task.all
  end

  def create
    @task=Task.new(task_params)
    @task.save
    redirect_to("/tasks")
  end

  def show
    @task=Task.find_by(id: params[:id])
  end

  def edit
    @task=Task.find_by(id: params[:id])
    @url={:controller => :tasks ,:action => :update}
  end

  def update
    @task=Task.find_by(id: params[:id])
    @task.update(task_params)
    redirect_to("/tasks")

  end

  def destroy
    @task=Task.find_by(id: params[:id])
    @task.destroy
    redirect_to("/tasks")
  end


  private
  def task_params
    params.require(:task).permit(:content , :deadline_year,:priority,:memo,:division)
  end

end
