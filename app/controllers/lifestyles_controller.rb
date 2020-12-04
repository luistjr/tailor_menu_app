class LifestylesController < ApplicationController
    def show
        @lifestyle = Lifestyle.find(params[:id])
    end
end
