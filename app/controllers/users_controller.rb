class UsersController < ApplicationController
    # has_many :tasks

    def index
        @users = User.all
        if @users.any?
            render json: @users
        else
            render json: { message: 'nenhum user cadastrado' }
        end
    end
    
    def show
        render json: @set_user
    end

    def create
        @user = User.create(user_params)
        if @user.save 
            render json: @user, status: 201
        else
            render json: @student_create.errors, status: 422
        end
    end

    def destroy
        @user_each.destroy
    end

    private

    def set_user
        @set_user = User.find(params[:id])
      end

    def user_params
        params.permit(:name, :email, :password)
    end
end