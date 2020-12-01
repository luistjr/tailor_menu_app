class User < ApplicationRecord
    has_many :users
    has_one :meal_kit, through: :lifestyle
    has_many :recipes, through: :lifestyle
end
