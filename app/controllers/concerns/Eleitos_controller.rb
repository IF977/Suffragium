class EleitosController < ApplicationController

  def Eleitos                                       
    @Eleitos = Candidatos.all
  end
  def candidate_params
        params.require(:candidate).permit(:nome, :partido, :numero)
  end
  
  def MeusVotos_params
      @consultaCandidatos = Candidates.all
        params.require(:Eleitos).permit(:candidate, :secondturn)
  end
end

#votação périodo atual