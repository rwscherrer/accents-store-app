Rails.application.routes.draw do

  get '/' => 'accents#index'
  get '/accents' => 'accents#index'
  get '/accents/new' => 'accents#new'
  post '/accents' => 'accents#create'
  
  get '/accents/:id' => 'accents#show'

  get '/accents/:id/edit' => 'accents#edit'
  patch '/accents/:id' => 'accents#update'
  
  delete '/accents/:id' => 'accents#destroy'
end
