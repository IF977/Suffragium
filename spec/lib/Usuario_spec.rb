require "spec_helper"
require "Usuario"

describe Usuario do
    valid_input = "[a-zA-z ]"
    invalid_input= "[^A-Za-z0-9 ]"
    obj = Usuario.new
    
    it "Checar instância de Cadastrar_Usuario" do
        expect(obj).to be_an_instance_of(Usuario)
    end
    
    it "O usuario é válido?" do #verifica se tem espaço e letras que compõe o nome
        expect(obj.user).to match(valid_input)
        expect(obj.user).not_to match(invalid_input) #aprimoramento do teste
    end
    
    it "password é valido?" do
        expect(obj.password).to match(valid_input)
        expect(obj.password).not_to be_empty
        expect(obj.password).to be_an_instance_of(String)
    end
end