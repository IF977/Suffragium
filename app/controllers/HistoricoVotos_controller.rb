class HistoricoVotosController < ApplicationController

  def HistoricoVotos                                       
    @HistoricoVotos = MeusVotos.all
  end
  
  def MeusVotos_params
        params.require(:MeusVotos).permit(:candidate, :year, :secondturn)
  end
end