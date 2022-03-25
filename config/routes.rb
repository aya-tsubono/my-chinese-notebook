Rails.application.routes.draw do

  devise_for :users

  root to: 'users#index'
  
  resources :users, only: [:show, :index]
  resources :words, only: [:index, :new, :create, :edit, :update]
  resources :word_answers, only: [:index, :new, :create]
  resources :word_mean_answers, only: [:index, :new, :create]
  resources :sentences, only: [:index, :new, :create, :edit, :update]
end
