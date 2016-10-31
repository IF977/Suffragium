class ConsultaCandidatosController < ApplicationController

  def ConsultaCandidatos                                              
    @ConsultaCandidatos = Candidates.all
  end
  
  def candidate_params
        params.require(:candidate).permit(:nome, :partido, :numero)
  end
end