class LiftsController < ApplicationController

    def create
        @lift = Lift.new(lift_params)
        if @lift.save
            render json: @lift
        else
            render json: @lift.errors, status: :Invalid_entry
        end 
    end

    def index
        @lifts = Lift.all
    end

    def show
    end



    def edit
    end

    def update
    end

    def destroy
    end

    private
    def lift_params
        params.require(:lift).permit(:date, :liftname, :ismetric, :weightlifted, :repsperformed, :onerm)
    end

end
