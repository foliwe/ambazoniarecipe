Rails.application.routes.draw do

  resources :recipes
  devise_for :users

  authenticated :user do
    root 'recipes#index', as: :authenticated_root
  end

  #get 'recipes',to: "recipes#index"
  root 'home#index'
  get 'user/:id', to: 'home#profile'
end
