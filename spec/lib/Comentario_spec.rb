require 'spec_helper'
require 'Comentario'

describe comentario do
    comentario = comentario.new
    it "Checar instância de Comentario" do
        comentario.should be_instance_of(Comentario)
    end
    
end