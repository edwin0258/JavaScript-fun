class PagesController < ApplicationController
    def home
    end
    def create
        @score = Score.create(score_params)
    end
    
    private
        def score_params
            params.require(:score).permit(:total, :name)
        end
end