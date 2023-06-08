class UsersController < ApplicationController

    def index 
        user = User.all
        render json: user
    end 

    def create
        user = User.new(user_params)
        # replace the `user_attributes_here` with the actual attribute keys
        user.save!
        render json: user
      end

    def show
        render json: params
    end

    private
    def user_params
        params.require(:user).permit(:name, :email)
    end
end 