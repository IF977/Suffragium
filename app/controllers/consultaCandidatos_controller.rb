class consultaCandidatosController < ApplicationController

  def consultaCandidatos                                              
    @consultaCandidatos = Candidates.all
  end
  
  def candidate_params
        params.require(:candidate).permit(:nome, :partido, :numero)
  end
end
