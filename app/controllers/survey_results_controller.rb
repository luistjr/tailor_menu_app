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
        
        athletic = score.select {|w| w == "athletic"}.count
        healthy = score.select {|w| w == "healthy"}.count
        foodie = score.select {|w| w == "foodie"}.count
        hungry = score.select {|w| w == "hungry"}.count
        byebug
    end

    def assign_lifestyle
    end
    
end
