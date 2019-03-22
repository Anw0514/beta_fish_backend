class FishController < ApplicationController
    before_action :find_fish, only: [:show, :update, :destroy]

    def create
        @fish = Fish.new(fish_params)
        @fish.games_won = 0
        @fish.getStats
        if @fish.save
            render json: @fish, status: accepted
        else
            render json: {errors: @fish.errors.full_messages}, status: unprocessible_entity
        end
    end

    def index
        @fishes = Fish.all
        render json: @fishes
    end

    def show
        render json: @fish
    end

    def update
        @fish.update(fish_params)
        if @fish.save
            render json: @fish, status: accepted
        else
            render json: {errors: @fish.errors.full_messages}, status: unprocessible_entity
        end
    end

    def destroy
        @fish.destroy
    end

    private

    def fish_params
        params.permit(:name, :img_url, :hp, :power, :games_won)
    end

    def find_fish
        @fish = Fish.find(params[:id])
    end
end
