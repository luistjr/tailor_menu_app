Rails.application.routes.draw do
  resources :survey_results
  resources :recipes
  resources :meal_kits
  resources :lifestyles
  resources :users

  # post '/users/new', to: 'users#new'
  # post 'users/new', to: 'sessions#new', as: 'new_login'
  post '/survey_results/new/', to: 'survey_results#survey_answers', as: 'results'
  # get "signup", to: "users#new", as: "signup"

  # get “/login”, to: “sessions#new” 
  # post “/login”, to: “sessions#create” 

  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions/new', to: "sessions#login", as: 'login'
  delete '/sessions/reset', to: 'sessions#logout', as: 'logout'

  post '/users/new', to: 'users#new'

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
