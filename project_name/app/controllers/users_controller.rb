class UsersController < ApplicationController

    def index       
        render json: User.all 
    end

    def show
        user = User.find(params[:id])

        render json: user
    end

    def create
        user = User.new(user_params)
        # debugger
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: 420
        end
    end

    def update
        user = User.find(params[:id])

        if user.update(user_params)
            render json: user
        else
            render json: user.errors.full_messages, status: 420
        end
    end

    def destroy
        user = User.find(params[:id])

        user.destroy 
        render json: user
    end

    def new
        #method that displays new user html page
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end

end