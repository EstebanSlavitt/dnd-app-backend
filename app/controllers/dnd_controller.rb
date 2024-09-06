# app/controllers/dnd_controller.rb
class DndController < ApplicationController
  # GET /dnd
  def index
    characters = Character.all  # Fetch all D&D characters from the database
    render json: characters     # Respond with the data as JSON
  end

  # GET /dnd/:id
  def show
    character = Character.find(params[:id])  # Fetch the character with the given ID
    render json: character                   # Respond with the data as JSON
  end
end
