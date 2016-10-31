require "spec_helper"
require "ConsultaCandidatos"

describe ConsultaCandidatos do
    valid_input = "[a-zA-Z0-9]"
    invalid_input= "[^A-Za-z0-9 ]"
    obj = ConsultaCandidatos.new
    
    it "Checar instância de ConsultaCandidatos" do
        expect(obj).to be_an_instance_of(ConsultaCandidatos)
    end
    
    it "O candidato é válido?" do 
        expect(obj.Candidate).to match(valid_input)
        expect(obj.Candidate).not_to match(invalid_input)
    end
end
