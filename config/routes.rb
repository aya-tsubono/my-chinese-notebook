Rails.application.routes.draw do

  devise_for :users

  root to: 'users#index'
  
  resources :users, only: [:show, :index]
  resources :words, only: [:index, :new, :create, :edit, :update]
  resources :sentences, only: [:index, :new, :create]
end
