class Lifestyle < ApplicationRecord
    has_one :user
    has_one :meal_kit
    has_many :recipes
end
