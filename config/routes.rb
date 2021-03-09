Rails.application.routes.draw do
 mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 root "tests#index"
 devise_for :users
  resources :users, only:[:show]
  resources :tests 
  resources :comments, only:[:index, :create]
  
 
 end
 