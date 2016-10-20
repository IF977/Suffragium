require "spec_helper"
require "Pesquisa"

describe Pesquisa do
    valid_input = "Graph"
    invalid_input= "[^A-Za-z0-9 ]"
    obj = Pesquisa.new
    
    it "Checar instância de Pesquisa" do
        expect(obj).to be_an_instance_of(Pesquisa)
    end
    
    it "O gráfico é válido?" do 
        expect(obj.pesquisa).to match(valid_input)
        expect(obj.pesquisa).not_to match(invalid_input) #aprimoramento do teste
    end
end
