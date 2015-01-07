class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.create task_params
    @task.save

    redirect_to action: "index"
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to action: "index"
  end

  private
    def task_params
      params.require(:task).permit(:name)
    end
end
