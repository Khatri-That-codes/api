require_relative "../../data/driver_dialogue"

class Api::DialogueController < ApplicationController

    def show
        driver = params[:driver]
        dialogue = DriverDialogue.random_for(driver)

        if dialogue
            render json: { driver: driver, dialogue: dialogue }
        else
            render json: { 
                error: "No dialogue found for driver #{driver}" ,
                available_drivers: DriverDialogue.drivers
            }, status: :not_found
        end

    end 
end

