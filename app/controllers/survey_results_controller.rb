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
        survey_count
    end

    def survey_count
        a_1 = survey_answers.count("athletic")
        a_2 = survey_answers.count("healthy")
        a_3 = survey_answers.count("foodie")
        a_4 = survey_answers.count("hungry")
        complete_answers = [a_1, a_2, a_3, a_4]
        return complete_answers
        # byebug
    end 

    # def max_complete_answers
    #     lifestyle_choice = survey_count.max

    #     if lifestyle_choice == a_1
    #         lifestyle_id =
    #     elsif lifestyle_choice == a_2

    #     elsif lifestyle_choice == a_3

    #     else lifestyle_choice == a_4
    # end 

    # def lifestyle_choice
    # end 
    
end
