class MealKit < ApplicationRecord
    belongs_to :lifestyle
    has_one :meal_kit, through: :lifestyle
end
