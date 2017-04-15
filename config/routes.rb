Rails.application.routes.draw do

  resources :recipes
  devise_for :users
  root 'home#index'
  get 'user/:id', to: 'home#profile'
end
