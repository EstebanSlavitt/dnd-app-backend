Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "/characters" => "characters#index"
  post "/characters" => "characters#create"
end
