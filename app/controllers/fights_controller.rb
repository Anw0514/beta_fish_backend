class FightsController < ApplicationController
    def create
        @fight = Fight.new(fight_params)
        @fight.update_fish
        if @fight.save
            render json: @fight
        else
            render json: {errors: @fight.errors.full_messages}
        end
    end

    def index
        @fights = Fight.all
        render json: @fights
    end

    private

    def fight_params
        params.require(:fight).permit(:fish_id, :opponent_id, :won)
    end
end
