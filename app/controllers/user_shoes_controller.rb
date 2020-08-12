class UserShoesController < ApplicationController
    def create
        UserShoe.create(
            user_id: params[:user_id],
            shoe_id: params[:shoe_id]
        )
    end
    def destroy
    end
    def index
        @user_shoes = UserShoe.all

        render json: @user_shoes
    end
end
