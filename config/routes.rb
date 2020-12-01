Rails.application.routes.draw do
  resources :recipes
  resources :meal_kits
  resources :lifestyles
  resources :surveys
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
