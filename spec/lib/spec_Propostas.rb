require "spec_helper"
require "propostas"

describe propostas do
    valid_input = "[a-zA-z ]"
    invalid_input= "[^A-Za-z0-9 ]"
    obj = Propostas.new
    
    it "Checar instância de Propostas" do
        expect(obj).to be_an_instance_of(propostas)
    end
    
    it "A proposta de educacao é válida?" do 
        expect(obj.educacao).to match(valid_input)
        expect(obj.educacao).not_to match(invalid_input) #aprimoramento do teste
        expect(obj.educacao).not_to be_empty
        expect(obj.educacao).to be_an_instance_of(String)
    end
    
    it "A proposta de saude é válida?" do 
        expect(obj.saude).to match(valid_input)
        expect(obj.saude).not_to match(invalid_input) #aprimoramento do teste
        expect(obj.saude).not_to be_empty
        expect(obj.saude).to be_an_instance_of(String)
    end
    
    it "A proposta de seguranca é válida?" do 
        expect(obj.seguranca).to match(valid_input)
        expect(obj.seguranca).not_to match(invalid_input) #aprimoramento do teste
        expect(obj.seguranca).not_to be_empty
        expect(obj.seguranca).to be_an_instance_of(String)
    end
end