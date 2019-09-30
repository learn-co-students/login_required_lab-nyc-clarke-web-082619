Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'applicaton#hello' #welcome page
get'/secret' => 'secrets#show' #accessed after logging in
get '/login' => 'sessions#new' #a new user starts at login
post '/' => 'sessions#create' #after creating an account, a user goes to welcome page
post '/login' => 'sessions#destroy'
end
