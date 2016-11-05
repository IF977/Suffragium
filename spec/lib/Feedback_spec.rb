require "spec_helper"
require "Feedback"

describe feedback do
    valid_input = "[A-Za-z0-9 ]"
    invalid_input= "[^A-Za-z0-9 ]"
    obj = Feedback.new
    
    it "Checar instância de Feedback" do
        expect(obj).to be_an_instance_of(feedback)
    end
    
    it "O comentario é válido?" do 
        expect(obj.comentarios).to match(valid_input)
        expect(obj.comentarios).not_to match(invalid_input) 
        expect(obj.comentarios).to be_an_instance_of(String)
    end
    
    it "A análise de sentimento é válida?" do 
        expect(obj.sentimento).to match(valid_input)
        expect(obj.sentimento).not_to match(invalid_input) 
        expect(obj.sentimento).to be_an_instance_of(String)
    end
end