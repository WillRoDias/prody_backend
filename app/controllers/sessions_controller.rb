class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        
        @user = User.find_by(sessions_params)
        if @user.present?
            # render json: @user, status: 201
            render json: @user, status: 202
        else
            render json: {status: 422}
        end
    end

    private

    def sessions_params
        # Rails.logger.debug params.inspect
        params.permit(:email, :password)
    end
end