Rails.application.routes.draw do
  resources :survey_results
  resources :recipes
  resources :meal_kits
  resources :lifestyles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
