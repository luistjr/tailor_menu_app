class SurveyResultsController < ApplicationController
    def index
    end 

    def show
    end

    def new
    end

    
    def survey_answers
        score = []
        score << params[:survey][:answer_1]
        score << params[:survey][:answer_2]
        score << params[:survey][:answer_3]
        score << params[:survey][:answer_4]
        score << params[:survey][:answer_5]
        score << params[:survey][:answer_6]
        score << params[:survey][:answer_7]
        
        # athletic = {athletic: score.select {|w| w == "athletic"}.count}
        # healthy = {healthy: score.select {|w| w == "healthy"}.count}
        # foodie = {foodie: score.select {|w| w == "foodie"}.count}
        # hungry = {hungry: score.select {|w| w == "hungry"}.count}
        
        ls_scores = {
            athletic: score.select {|w| w == "athletic"}.count, 
            healthy: score.select {|w| w == "healthy"}.count, 
            foodie: score.select {|w| w == "foodie"}.count, 
            hungry: score.select {|w| w == "hungry"}.count
        }

        # ls_scores.max_by?(key, value)
        
            byebug
    end

    def assign_lifestyle
    end
    
end


# 1. ls_array = ls_scores.max_by{|k, v| v}
# 2. ls_array[0].to_s
# 3. Lifestyle.find_by(category: ls_array[0].to_s)
# 4. a.lifestyle_id = (Lifestyle.find_by(category: ls_array[0].to_s)).id
#     - assign the lifestyle id to the user's lifestyle_id