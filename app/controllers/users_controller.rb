class UsersController < ApplicationController
    def create
        user = User.create(user_params)

        render json: { data: user, message: 'User created successfully'}
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: { message: 'User updated successfully' }
    end

    def index
        render json: { data: User.all }
    end

    private

    def user_params
        params.permit(:email, :password)
    end
end
