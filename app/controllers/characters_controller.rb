require "http"

class CharactersController < ApplicationController
  def index
    @characters = Character.all
    render :index
  end

  def create
    response_c = HTTP.get("https://www.dnd5eapi.co/api/classes")
    data_c = response_c.parse
    response_r = HTTP.get("https://www.dnd5eapi.co/api/races")
    data_r = response_r.parse
    response_a = HTTP.get("https://www.dnd5eapi.co/api/alignments")
    data_a = response_a.parse
    response_b = HTTP.get("https://www.dnd5eapi.co/api/backgrounds")
    data_b = response_b.parse

    @character = Character.create(
      name: params[:name],
      class_name: data_c["results"].sample["name"],
      race: data_r["results"].sample["name"],
      level: 1,
      alignment: data_a["results"].sample["name"],
      background: data_b["results"].sample["name"],
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
end
