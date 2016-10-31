class PesquisaController < ApplicationController
  def listar
    @listar = Pesquisa.all
    render 'pesquisa/intencaodevoto'
  end
  def detalhes
    consulta = Pesquisa.new(pesquisaconsulta_params)
    candidato = consulta['nome','numero','filiacao_partidaria']
    sql = ActiveRecord::Base.connection
    @detalhes = sql.execute %{SELECT * FROM pesquisa WHERE candidato = '#{candidato}')}
  end
  def intencaodevoto
    @intencaodevoto = Pesquisa.new(pesquisa_params)
    @intencaodevoto['candidato'] = params[:pesquisa]['candidato']
    @intencaodevoto['data'] = params[:pesquisa]['data']
    @intencaodevoto['graph'] = params[:pesquisa]['graph']
    @intencaodevoto['fonte'] = params[:pesquisa]['fonte']
    @intencaodevoto.save!
    @listar=Pesquisa.all
  end
  def pesquisa_params
    params.require(:intencaodevoto).permit(:candidato, :data, :graph, :fonte)
  end
  def pesquisaconsulta_params
    params.require(:intencaodevoto).permit(:graph)
  end
  #teste
end