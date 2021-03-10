Rails.application.routes.draw do
  devise_for :users
  post "wines", to: "wines#create"
  
  root 'wines#index'
end
