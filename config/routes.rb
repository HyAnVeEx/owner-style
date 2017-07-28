Rails.application.routes.draw do
  get 'users/index'

  root 'products#index'
  devise_for :users
  resources :users, only: [:index, :edit, :update]
    # resources :deliveries, only: [:edit, :update] do
    # end
end
