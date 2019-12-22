Rails.application.routes.draw do
  devise_for :users
  resources :hauls
  resources :globals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "hauls#index"
end
