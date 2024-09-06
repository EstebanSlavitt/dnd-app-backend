Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "/characters" => "characters#index"
  get "/characters/:id" => "characters#show"
  post "/characters" => "characters#create"
  patch "/characters/:id" => "characters#index"
  delete "/characters/:id" => "characters#destroy"
  resources :dnd, only: [:index, :show]
  get "/api/classes", to: "dnd#classes"
  get "/api/races", to: "dnd#races"
end
