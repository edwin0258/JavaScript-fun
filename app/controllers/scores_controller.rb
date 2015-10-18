class ScoresController < ApplicationController
    respond_to :html, :js
    def index
        @scores = Score.all.order("total DESC")
    end
    def new
        @score = Score.new
    end
    def create
        @score = Score.create(score_params)
        @score.name = params[:name]
        @score.total = params[:total]
    end
    
    private
        def score_params
            params.require(:score).permit(:total, :name)
        end
        
end