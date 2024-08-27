class CharactersController < ApplicationController
  def index
    @characters = character.all
    render :index
  end
end

def create
  @character = character.create(
    name: params[:name],
  )
  render :show
end
