class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users
    end

    def create 
        @new = User.create(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end    

end
