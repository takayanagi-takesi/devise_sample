Rails.application.routes.draw do
  get 'users/show'
  #get 'items/index'
  #get 'items/new'
  #get 'items/create'
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'items#index'
  devise_for :users
  resources :items
  resource :users, only: :show
end
