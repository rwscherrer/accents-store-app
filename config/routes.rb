Rails.application.routes.draw do
  # accents routes
  get '/' => 'accents#index'
  get '/accents' => 'accents#index'
  get '/accents/new' => 'accents#new'
  post '/accents' => 'accents#create'

  get '/accents/random' => 'accents#random'
  
  get '/accents/:id' => 'accents#show'

  get '/accents/:id/edit' => 'accents#edit'
  patch '/accents/:id' => 'accents#update'
  
  delete '/accents/:id' => 'accents#destroy'

  # supplier routes

  get '/suppliers' => 'suppliers#index'
  
  get 'suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'

  get '/suppliers/:id' => 'suppliers#show'

  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'
  
  delete '/suppliers/:id' => 'suppliers#destroy'

  # user routes

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # sessions routes

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


end
