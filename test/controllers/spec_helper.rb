require "spec_helper"

describe Cadastro do
		it "Se o email de para cadastro é válido" #?
		login = Login.new (name :'aaaaa', email :'aaaaaa@facebook')
		expect(login).to be_valid
	end

		it "O email digítado já existe" #?
	    user = user.create(:email => 'aaaaa@facebook.com')
	    user = user.new(:email => 'aaaaa@facebook.com')
	    expect(user).to be_valid
	end

		it "Senha contém mais de 6 digítos" #?
		senha1 = Senha.new
		expect(senha1).not_to be_empty #Login tem algum digíto?
		if expect(senha1).length >= 5
		expect(senha1) #A senha contém mais de 6 digítos? senha é = true
		
	end

		it "Senha contém a nesma quantidade de digítos da anterior" #?
		senha2 = Senha.new
		expect(senha2).not_to be_empty #Login tem algum digíto?
		if expect(senha2).length >= 5 #A senha contém mais de 6 digítos? senha é = true
		if expect(senha2) == (senha1) #Compara se a senha 1 e igual a senha 2.	
		
	end
end