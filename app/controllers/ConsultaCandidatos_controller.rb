class ConsultaCandidatosController < ApplicationController

  def consultaCandidatos                                              
    @consultaCandidatos = Candidates.all
  end
  
  def candidate_params
        params.require(:candidate).permit(:nome, :partido, :numero)
  end
  def new
    # default: render ’new’ template
  end
  def create
    @candidate = candidate.create!(params[:candidate])
    flash[:notice] = "#{@candidates.nome} was successfully created."
    redirect_to candidate_path
  end
  def update
    @candidate = candidate.find params[:id]
    @candidate.update_attributes!(params[:candidate])
    flash[:notice] = "#{@candidate.nome} was successfully updated."
    redirect_to candidate_path(@candidate)
  end
  def destroy
    @candidate = candidate.find(params[:id])
    @candidate.destroy
    flash[:notice] = "Candidate ’#{@candidate.nome}’ deleted."
    redirect_to candidate_path
  end
end