Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "experiences#index"

  resources :experiences, only: [ :index, :create, :new, :destroy ]
end
