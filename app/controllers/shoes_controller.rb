class ShoesController < ApplicationController

    def index
        @shoes = Shoe.all

        render json: @shoes
    end

    def show
        @shoe = Shoe.find params[:id]

        render json: { shoe: @shoe}
    end

    def create
        @shoe = Shoe.create(
            name: params[:name],
            brand: params[:brand],
            gender: params[:gender],
            retail_price: params{:retail_price},
            colors: params[:colors],
            title: params[:title],
            image: params[:image],
        )

        render json: @shoe, status: :created
    end

    def destroy
        @shoe = Shoe.find params[:id]

        @shoe.destroy
    end


end
