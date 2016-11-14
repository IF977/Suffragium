class ReviewsController < ApplicationController
    
    def create
	    @propostas = propostas.find(params[:question_id])
	    @comentario = @propostas.comentario.create(comentario_params)

      	@comentario.save
      	redirect_to propostas
    end
  private
    def review_params
      params.require(:review).permit(:comentario)
    end
end
