class SurveyResultsController < ApplicationController

    def index
    end 

    def show
        @survey_result = SurveyResult.find(params[:id])
    end 
end
