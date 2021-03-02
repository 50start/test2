Rails.application.routes.draw do
  get 'users/new'
 mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 root "tests#index"
 devise_for :users
  resources :users, only:[:show]
  resources :tests do
   resource :favorites, only:[:create, :destroy]
  end
 
 end
 