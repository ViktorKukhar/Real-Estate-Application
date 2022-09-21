Rails.application.routes.draw do
  get "/dashboard" => 'dashboard#index', as: :dashboard
  get "/admin" => 'admin#admin_panel', as: :admin_panel
  get 'dashboard/properties'
  get 'dashboard/reports'

  get 'properties/apartments', as: :apartments
  get 'properties/houses', as: :houses

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
