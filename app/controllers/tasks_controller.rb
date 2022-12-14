class TasksController < ApplicationController
    # belongs_to :users
    
    def index
        @tasks = Task.all
        if @tasks.any?
            render json: @tasks, status: 202
        else
            render json: {message: "nennhum user cadastrado"}
        end
    end

    def create
        @task = Task.create(task_params)
        if @task.save
            render json: @task, status: 202
        else
            render json: {message: "erro ao criar user"}
        end
    end

    private

    def task_params
        params.permit(:name)
    end
end