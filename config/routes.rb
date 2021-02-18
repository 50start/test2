Rails.application.routes.draw do
 devise_for :users
  resources :users 
  resources :tests  
 mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 root "tests#index"
 end
 