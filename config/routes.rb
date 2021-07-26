Rails.application.routes.draw do
  
  devise_for :users
  resources :laps
  resources :races
  resources :pilot_teams
  resources :championships
  resources :pilots
  resources :circuits
  resources :teams
  resources :brands
  
  
  root 'brands#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
