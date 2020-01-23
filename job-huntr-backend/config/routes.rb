Rails.application.routes.draw do
  resources :notes
  resources :leads
  resources :sessions, only: [:create]
  resources :users, only: [:create, :index]
  
    post "/login", to: "auth#create"
    get "/profile", to: "users#profile"
 
  
  root to: "static#home"
end
