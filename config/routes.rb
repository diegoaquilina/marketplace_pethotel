Rails.application.routes.draw do

  root to: "pages#market"
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :locations do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:show, :edit, :update, :index, :destroy]

  resources :devices, only: [:new, :create]

  resources :pets, only: [:new, :create, :edit, :destroy]
  resources :users, only: [:show, :edit, :update]


  get '/profile', to: 'pages#profile', as: 'profile'
  get '/profile/:id', to: 'pages#profile', as: 'profile_show'


  # resources :users, only: [:show]
  #get '/market', to: 'pages#market', as: 'market'
  #get '/hotel/busca', to: 'locations#index'
  #get '/user/sign_up', to: 'devices#registration'
  #get '/user/sign_in', to 'devices#registration'
  #get '/pets/new', to 'pets#new'
  #post '/pets', to 'pets#create'
  #get '/reservations/new', to 'reservations#reservations#new'
  #get '/guests', to 'reservations#guests'
  #patch '/updatereservation', to 'reservations#updatereservations'
  #delete 'reservations/:id', to 'reservations#destroy'
  #get '/hosts/sign_up', to 'hosts#hosts#new'
  #get 'reservation/:id', to 'reservations#reservations#show'
  #get '/reservation/new', to 'reservations#reservations#new'
  #get '/reservations/:id/edit', to 'reservations#reservations#edit'
  #patch '/reservations/:id', to 'reservations#reservations#update'
  #get '/location/:id/edit', to 'locations#locations#edit'
  #patch '/location/:id', to 'locations#locations#update'
end
