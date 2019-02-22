Rails.application.routes.draw do
  resources :restaurants, except: [:show]
  resources :tables
  resources :reservations

  root "restaurants#index"
end
