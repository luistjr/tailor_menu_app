class Lifestyle < ApplicationRecord
    has_many :users
    has_one :meal_kit
    has_many :recipes
end
