Rails.application.routes.draw do
  resources :likes, only: [:create, :update, :destroy]
  resources :songs, only: [:index, :show, :create, :update]
  resources :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
