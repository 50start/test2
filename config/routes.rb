Rails.application.routes.draw do
 mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 root "tests#index"
 devise_for :users
  resources :users 
  resources :tests do
   resource :favorites, only:[:create, :destroy]
  end
 
 end
 