class UsersController < ApplicationController
    def new 

    end

    def create 
        @user = User.new(users_params)

        if @user.save
        render json: @user, status: :created, location: @user
        else
        render json: @user.errors, status: :unprocessable_entity
        end
    end

    def index 
        @users= User.all 
        render json: @users
    end

    private 

    def users_params 
         params.require(:user).permit(:usernamem, :password, :email)
    end
end
