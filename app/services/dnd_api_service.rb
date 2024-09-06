require "rest-client"
require "json"

class DndApiService
  BASE_URL = "https://www.dnd5eapi.co/api".freeze

  def self.get_classes
    begin
      response = RestClient.get("#{BASE_URL}/classes/")
      JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      puts "Error fetching class data: #{e.response}"
      return [] # Return an empty array or handle as needed
    end
  end

  def self.get_races
    begin
      response = RestClient.get("#{BASE_URL}/races/")
      JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      puts "Error fetching race data: #{e.response}"
      return [] # Return an empty array or handle as needed
    end
  end

  # Add more API calls for things like spells, items, etc.
end
