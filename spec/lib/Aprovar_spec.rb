require 'spec_helper'
require 'Comentario'
require 'Aprovar'

describe comentario do
    comentario = comentario.new
    it "Checar instância de Comentario" do
        comentario.should be_instance_of(Comentario)
    end
    
describe aprovar do 
    aprovar= aprovar.new
    it "chegar instância aprovar" do
        aprovar.should be_instance_of(Aprovar)
    end
    
describe desaprovar do 
    desaprova= desaprova.new
    it "chegar instância desaprova" do
        desaprova.should be_instance_of(Desaprova)
    end
    
end