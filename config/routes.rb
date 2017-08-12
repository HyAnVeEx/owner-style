Rails.application.routes.draw do
  get 'products/index'
  root 'products#index'
  devise_for :users
  resources :users, only: [:index, :edit, :update,:show]
  resources :products, only: [:index, :edit, :update,:show,:create,:new] do
    resources :orders, only: [:create,:new]
  end
end
