class Lifestyle < ApplicationRecord
    has_many :survey_results
    has_many :users, through: :survey_results
    has_one :meal_kit
    has_many :recipes

    def athletic_recipes
        Recipe.all.select {|r| r.lifestyle_id == self.id}
    end

    def healthy_recipes
        Recipe.all.select {|r| r.lifestyle_id == self.id}
    end

    def foodie_recipes
        Recipe.all.select {|r| r.lifestyle_id == self.id}
    end

    def hungry_recipes
        Recipe.all.select {|r| r.lifestyle_id == self.id}
    end

end
