Rails.application.routes.draw do
  get 'sessions/new'
  post 'sessions/new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/secret' => 'secrets#show'
  get 'secrets/new'
  root 'application#hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
