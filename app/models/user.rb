class User < ApplicationRecord
    belongs_to :lifestyle
    has_one :meal_kit, through: :lifestyle
    has_many :recipes, through: :lifestyle
end
