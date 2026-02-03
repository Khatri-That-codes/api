require_relative "../../data/driver_dialogue"
require_relative "../../data/team_dialogue"


class Api::DialogueController < ApplicationController
  def driver
    driver = params[:driver]
    driver = driver.downcase.strip.gsub(" ", "_")   # trying to match as best as possible   
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

  def team
    team = params[:team]
    team = team.downcase.strip.gsub(" ", "_") # trying to match as best as possible
    dialogue = TeamDialogue.get_dialogue(team)

    if dialogue
      render json: { team: team, dialogue: dialogue }
    else
      render json: { 
        error: "No dialogue found for team #{team}",
        available_teams: TeamDialogue.teams
      }, status: :not_found
    end
  end

  private

  def not_found(type)
    render json: { error: "#{type} not found" }, status: 404
  end
end
