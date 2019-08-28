Rails.application.routes.draw do
  get 'users/new'
  get 'products/index'
  get 'products/create'
  get 'products/new'
  get 'products/edit'
  get 'products/show'
  get 'products/update'
  get 'products/destroy'

  devise_for :users
  resources :mypages, only: [:index, :edit, :update]
  root 'products#index'
end
