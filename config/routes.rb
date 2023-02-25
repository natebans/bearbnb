Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/bookings/request", to: "bookings#request"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :bears do
    resources :bookings, only: :create
  end
  #resources :bookings, only: %i[request confirmation]
  resources :bookings, only: :show
  resources :users, only: :show
  get "/profile", to: "pages#profile"
end
