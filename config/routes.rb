Rails.application.routes.draw do
  root 'home#index'
  resources :tranxactions
  resources :categories
end
