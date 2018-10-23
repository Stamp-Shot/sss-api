Rails.application.routes.draw do

  get '/spots', to:'spots#index'
  get '/spots/:id/:name', to:'spots#show'
  post '/spots', to:'spots#create'
  #get  '/spots/:id/dounload', to:'spots#download'
  #put '/spots/:id/upload', to:'spots#imageup'

  get '/courses', to:'courses#index'
  get '/courses/count/:id', to:'courses#count'
  get '/courses/:id', to:'courses#show'
  get '/courses/:id/:text', to:'courses#search'
  post '/courses', to:'courses#create'

  get '/users/all', to:'users#index'
  get '/users/:id', to:'users#show'
  post '/users', to:'users#create'

  get '/finishes', to:'finishes#index'
  get '/finishes/:user_id/:course_id/:spot_id', to:'finishes#show'
  post '/finishes', to:'finishes#create'

  get '/exchanges', to:'exchanges#index'
  get '/exchanges/:user_id/:course_id', to:'exchanges#show'
  post '/exchanges', to:'exchanges#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
