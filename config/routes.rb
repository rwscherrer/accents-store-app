Rails.application.routes.draw do
  get '/one_accent' => 'accents#one_accent'
  get '/all_accents' => 'accents#all_accents'
  get '/get_form' => 'accents#get_form'
  post '/send_form' => 'accents#send_form'
end
