Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get '/market', to: 'pages#market', as: 'market'

  # get '/hotel/busca', to 'locations#index'
  # get '/user/sign_up', to 'devices#registration'
  # get '/user/sign_in', to 'devices#registration'
  # get '/pets/new', to 'pets#new'
  # post '/pets', to 'pets#create'
  # get '/reservations/new', to 'reservations#reservations#new'
  # get '/guests', to 'reservations#guests'
  # patch '/updatereservation', to 'reservations#updatereservations'
  # delete 'reservations/:id', to 'reservations#destroy'
  # get '/hosts/sign_up', to 'hosts#hosts#new'
  # get 'reservation/:id', to 'reservations#reservations#show'
  # get '/reservation/new', to 'reservations#reservations#new'
  # get '/reservations/:id/edit', to 'reservations#reservations#edit'
  # patch '/reservations/:id', to 'reservations#reservations#update'
  # get '/location/:id/edit', to 'locations#locations#edit'
  # patch '/location/:id', to 'locations#locations#update'
end
