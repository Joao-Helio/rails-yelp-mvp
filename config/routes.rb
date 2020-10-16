Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :new, :create, :index, :show ] do
    resources :reviews, only: [ :new, :create ]
  end
  # resources :reviews, only: [ :destroy ]
  
  # get "/restaurants", to: "restaurants#index"
  # get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "/restaurants", to: "restaurants#create"
  # get "/restaurants/:id", to: "restaurant#show", as: :restaurant
  # get "/restaurants/:restaurant_id/reviews", to: "review#create", as: :restaurant_review
  # get "/restaurants/:restaurant_id/reviews/new", to: "review#new", as: :new_restaurant_review
end
