class MealKit < ApplicationRecord
    belongs_to :lifestyle
    has_one :user, through: :lifestyle
end
