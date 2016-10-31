class historicoVotosController < ApplicationController

  def historicoVotos                                       
    @historicoVotos = MeusVotos.all
  end
  
  def MeusVotos_params
        params.require(:MeusVotos).permit(:candidate, :year, :secondturn)
  end
end