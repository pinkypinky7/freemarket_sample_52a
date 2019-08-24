Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :mypages, only: [:index, :edit, :update]
end
