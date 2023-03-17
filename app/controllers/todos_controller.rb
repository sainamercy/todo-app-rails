class TodosController < ApplicationController
    def get_todos
        render json: Todo.all
    end

    def create
        todo = Todo.create(todo_params)
        render json: todo
    end

    def update
        todo = Todo.find_by(id: params[:id])
        todo.update(todo_params)
        render json: {message: "successfully updated"}
    end

    def destroy
        todo = Todo.find_by(id: params[:id])
        todo.destroy
        render json: {message: "successfully deleted"}
    end

    private

    def todo_params
        params.permit(:title, :description, :priority, :status)
    end
end
