Rails.application.routes.draw do
  resources :availability_slots
  resources :event_types
  resources :events
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  authenticated :user do 
    root to: "home#dashboard", as: :authenticated_root
  end
end
