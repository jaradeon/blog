Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :posts
  get "api/v1/weather" => "api/v1/weather#get_weather"
end
