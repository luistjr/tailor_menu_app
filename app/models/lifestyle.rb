class Lifestyle < ApplicationRecord
    has_many :survey_results
    has_many :users, through: :survey_results
    has_one :meal_kit
    has_many :recipes
end
