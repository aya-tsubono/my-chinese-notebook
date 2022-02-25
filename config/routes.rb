Rails.application.routes.draw do

  get 'words/index'
  root to: 'words#index'
  
  resources :words, only: [:index]
end
