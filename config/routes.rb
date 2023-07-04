Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: "tours#index"

  get '/tours/new', to: 'tours#new', as: 'new_tour'

  resources :tours do
    resources :hobbies, only: [:index]
  end


  #resources :tours do
    #resources :bookings, only: [:new, :create]
    #resources :reviews, only: [:index, :create]
  #end

  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
  #patch 'accept'
     # patch 'refuse'
     # post 'chat', on: :collection
    #end
  resources :reviews, only: [:new, :create]
  #end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
