class SurveyResultsController < ApplicationController
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
        
        ls_scores = {
            athletic: score.select {|w| w == "athletic"}.count, 
            healthy: score.select {|w| w == "healthy"}.count, 
            foodie: score.select {|w| w == "foodie"}.count, 
            hungry: score.select {|w| w == "hungry"}.count
        }
    end

    def assign_lifestyle
        ls_array = survey_answers.max_by{|k, v| v}
        number = (Lifestyle.find_by(category: ls_array[0].to_s)).id
        SurveyResult.create(user_id: @current_user.id, lifestyle_id: number)
        @current_user.lifestyle_id = number
        redirect_to user_path(@current_user)
        # byebug
    end 
    
end


