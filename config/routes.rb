Rails.application.routes.draw do
  devise_for :users
  resources :wines, only: [:create, :edit, :update]
  resources :oenologists, only: [:create, :index, :new]
  
  root 'wines#index'
end
