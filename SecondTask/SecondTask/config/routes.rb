Rails.application.routes.draw do
  devise_for :users
  resources :home
  resources :events
  resources :general_events
  root to: "home#index"
end
