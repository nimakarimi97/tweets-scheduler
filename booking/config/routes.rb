Rails.application.routes.draw do
  scope module: :v1 do # I used scope module rather than namespace because I wanted to keep the url short and simple
    resources :availability_slots
    resources :event_types
    resources :events
    root "home#index"
  end
  
  devise_for :users
end
