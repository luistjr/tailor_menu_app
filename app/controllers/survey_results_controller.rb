class SurveyResultsController < ApplicationController

    def index
    end 

    def new
    end

    @@score = []

    def final_score
        @@score << params[:survey][:answer]
        byebug
    end
    
end
