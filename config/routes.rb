EMagAPP::Application.routes.draw do


  get "sign_in" => 'sessions#new', :as => :sign_in


  post "sessions/create"

  get "sessions/destroy" => 'sessions#destroy', :as => :sign_out

  root to: 'emags#index'
  resources :emags
  resources :users
  resources :comments
  resources :orders
  resources :favorites
end
