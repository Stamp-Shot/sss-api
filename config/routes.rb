Rails.application.routes.draw do

  get '/spots', to:'spots#index'
  get '/spots/:id', to:'spots#show'
  post '/spots', to:'spots#create'

  get '/cources', to:'cources#index'
  get '/cources/:id', to:'cources#show'
  get '/cources/spot/:name', to:'cources#search'
  post '/cources', to:'cources#create'

  get '/users/all', to:'users#index'
  get '/users/:id', to:'users#show'
  post '/users', to:'users#create'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
