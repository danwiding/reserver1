Rails.application.routes.draw do

  root 'home#index'
  devise_for :owners
  devise_for :users
  resources :restaurants
  resources :reservations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
