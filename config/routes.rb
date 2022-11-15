Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'categories#index', as: :authenticated_root
  end

  root "splash#index"

  resources :categories do
    resources :expenses
  end

  resources :users, only: [:edit, :update]

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "categories#index"
end
