Rails.application.routes.draw do
  get '/' => 'accents#index'
  get '/accents' => 'accents#index'

  get '/accents/new' => 'accents#new'
  get '/accents/new1' => 'accents#new1'
  post '/accents' => 'accents#create'
  
  get '/accents/:id' => 'accents#show'

  get '/accents/:id/edit' => 'accents#edit'
  patch '/accents/:id' => 'accents#update'
  

  get '/one_accent' => 'accents#one_accent'
  get '/all_accents' => 'accents#all_accents'
  get '/get_form' => 'accents#get_form'
  post '/send_form' => 'accents#send_form'
end
