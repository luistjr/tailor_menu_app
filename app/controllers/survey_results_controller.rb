class SurveyResultsController < ApplicationController
    def index
    end 

    def show
    end

    def new
    end

    def about
    end

    @@score = []

    def final_score
        @@score << params[:survey][:answer]
        # redirect_to new_survey_result_path
    end

end
