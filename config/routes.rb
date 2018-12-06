Rails.application.routes.draw do

  root 'pages#index'

  # pages routes
  get 'pages/about'
  get 'pages/contact'

  # rooms routes
  resources :rooms
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
