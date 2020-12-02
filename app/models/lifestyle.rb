class Lifestyle < ApplicationRecord
    has_many :survey_results
    has_one :user, through: :survey_result
    has_one :meal_kit
    has_many :recipes
end
