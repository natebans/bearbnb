Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :bears
  resources :bookings, except: %i[index show new create edit update destroy] do
    member do
      get :request
      get :confirmation
    end
  end
end
