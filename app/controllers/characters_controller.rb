class CharactersController < ApplicationController
  def index
    @characters = Character.all
    render :index
  end
end

def create
  @character = Character.create(
    name: params[:name],
  )
  render :show
end

def show
  @character = Character.find_by(id: params[:id])
  render :show
end

def update
  @character = Character.find_by(id: params[:id])
  @character.update(
    name: params[:name] || @character.name,
  )
  render :show
end

def destroy
  @character = Character.find_by(id: params[:id])
  @character.destroy
  render json: { message: "character destroyed successfully" }
end
