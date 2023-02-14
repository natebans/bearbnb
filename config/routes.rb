Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  resources :bears
  resources :bookings, except: %i[index show new create edit update destroy] do
    member do
      get :request
      get :confirmation
    end
  end
end
