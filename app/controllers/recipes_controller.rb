class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
        @lifestyles = Lifestyle.all
    end
   
end
