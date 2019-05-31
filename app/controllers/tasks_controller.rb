class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_url, notice: "タスクを登録しました。"
    else
      flash.now.alert = "タスクを登録できません。"
      render :new
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
