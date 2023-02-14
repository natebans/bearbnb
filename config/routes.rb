Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  resources :bears
  # resources :bookings do
  #   member do
  #     get :request
  #     get :confirmation
  #   end
  # end
  get "/bookings/:id/request", to: "bookings#request", as: :request
  get "/bookings/:id/confirmation", to: "bookings#confirmation", as: :confirmation
end
