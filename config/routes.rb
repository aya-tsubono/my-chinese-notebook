Rails.application.routes.draw do

  devise_for :users

  root to: 'words#index'
  
  resources :users, only: [:show]
  resources :words, only: [:index, :new, :create, :edit, :update]
  resources :sentences, only: [:new, :create]
end
