Rails.application.routes.draw do
  
  resources :habits
  # resources :users

  post '/login', to: 'sessions#login'
  get '/authorized_user', to: 'users#show'
  delete '/logout', to: 'sessions#logout'

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
