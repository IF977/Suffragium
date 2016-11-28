class AprovarController < ApplicationController
    
    class ReviewsController < ApplicationController
    def create
	    @curtida = @curtida.find(params[:question_id]) # 1 s 0 n
      	@curtida.save
      	redirect_to propostas
    end
  private
    def review_params
      params.require(:review).permit(:curtida)
    end
end
