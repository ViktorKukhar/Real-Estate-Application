Rails.application.routes.draw do
  get "/dashboard" => 'dashboard#index', as: :dashboard
  get "/admin" => 'admin#admin_panel', as: :admin_panel
  get "/profile/:id" => 'admin#profile', as: :profile

  get 'dashboard/properties'
  get 'dashboard/reports'

  get '/apartments' => 'properties#apartments', as: :apartments
  get '/houses' => 'properties#houses', as: :houses

  get "/sell" => 'public#sell', as: :sell
  get "/rent" => 'public#rent', as: :rent

  get 'sell/apartments' => 'properties#apartments_sell', as: :apartments_sell
  get 'sell/houses' => 'properties#houses_sell', as: :houses_sell
  get 'rent/apartments' => 'properties#apartments_rent', as: :apartments_rent
  get 'rent/houses' => 'properties#houses_rent', as: :houses_rent

  get 'properties/apartments/1room' => 'properties#one_rooms', as: :one_rooms
  get 'properties/apartments/2room' => 'properties#two_rooms', as: :two_rooms
  get 'properties/apartments/3room' => 'properties#three_rooms', as: :three_rooms
  get 'properties/apartments/4room' => 'properties#four_rooms', as: :four_rooms




  resources :properties
  devise_for :accounts

  root to: 'public#main'




  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
