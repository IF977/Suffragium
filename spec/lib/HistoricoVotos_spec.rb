require "spec_helper"
require "HistoricoVotos"

describe HistoricoVotos do
    regex_num = /[n%2=0]/
    regex_relatorio = /./
    valid_input = "[A-Za-z0-9 ]"
    obj = HistoricoVotos.new
    
    it "Checar instância de HistoricoVotos" do
        expect(obj).to be_an_instance_of(HistoricoVotos)
    end
    
    it "O candidato é válido?" do #verifica se o candidato é valido
        expect(obj.candidato).not_to match(regex_num)
        expect(obj.candidato).to match(valid_input)
    end
    it "O ano é válido?" do #verifica se o ano da eleição é valido
        expect(obj.codigo).not_to match(valid_input)
        expect(obj.codigo).to match(regex_num)
        expect(obj.codigo).not_to be_empty
    end
    it "O Relatório é valido?" do
        expect(obj.relatorio).not_to be_empty
        expect(obj.relatorio).to match(regex_relatorio)
    end
end