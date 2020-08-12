class UsersController < ApplicationController

    def index
        @users = User.all 
        render json: { users: @users}, include:[:shoes]
    end

    def show
        @user = User.find params[:id]
        render json: { user: @user }, include:[:shoes]
    end

    def create
     @user = User.new(user_params)
        if @user.valid?
            @user.save
            secret= Rails.application.secret_key_base
            @token = JWT.encode({user_id: @user.id}, secret )
            render json: { user: @user, token: @token }, status: :created
        else
            render json: { errors: @user.errors.full_messages }, status: :not_acceptable
        end
    end

    def destroy
        @user = User.find params[:id]
        @user.destroy
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end


