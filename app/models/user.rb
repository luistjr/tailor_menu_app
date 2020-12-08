class User < ApplicationRecord
    has_many :survey_results
    has_many :lifestyles, through: :survey_results
    belongs_to :lifestyle, optional: true

    has_secure_password

    validates :username, uniqueness: { case_sensitive: false }
    validates :email, uniqueness: { case_sensitive: false }
    validates_presence_of :username, :email, :password

    def current_mealkit
        MealKit.all.select {|r| r.lifestyle_id == self.lifestyles[-1].id}
    end 

    def current_recipe_list
        Recipe.all.select {|r| r.lifestyle_id == self.lifestyles[-1].id}.sample(3)
    end 

    
end
