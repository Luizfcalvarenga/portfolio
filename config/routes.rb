Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "profiles#index"

  resources :profiles, only: [ :index, :create, :new, :destroy ]
end
