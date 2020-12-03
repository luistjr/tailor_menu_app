Rails.application.routes.draw do
  resources :survey_results
  resources :recipes
  resources :meal_kits
  resources :lifestyles
  resources :users

  post '/survey_results/new', to: 'survey_results#final_score', as: 'results'
  # post '/survey_results/new1', to: 'survey_results#final_score'
  # post '/survey_results/new', to: 'survey_results#final_score_2'
  # post '/survey_results/new', to: 'survey_results#final_score_3'
  # post '/survey_results/new', to: 'survey_results#final_score_4'
  # post '/survey_results/new', to: 'survey_results#final_score_5'
  # post '/survey_results/new', to: 'survey_results#final_score_6'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
