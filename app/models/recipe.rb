class Recipe < ApplicationRecord
    belongs_to :lifestyle

    def athletic_recipes
        Recipe.all.select {|r| r.lifestyle_id == 1}
        recipes.sample(3)
    end

    def healthy_recipes
        Recipe.all.select {|r| r.lifestyle_id == 2}
    end

    def foodie_recipes
        Recipe.all.select {|r| r.lifestyle_id == 3}
    end

    def hungry_recipes
        Recipe.all.select {|r| r.lifestyle_id == 4}
    end

end
