Rails.application.routes.draw do
  resources :deals
  resources :categories
  devise_for :users
  authenticated :user do
    root to: 'categories#index', as: :authenticated_root
  end
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"
end
