class UsuarioController < ApplicationController
  def cadastrar
  end
  def form
   
  end
  
def usernew                                                   #Novo usuario
    @usuario = Usuario.new(cliente_params)                      
    @usuario['login'] = params[:usuario]['login']
    @usuario['password'] = params[:usuario]['password']
    substituir = ActiveRecord::Base.connection
    result = substituir.execute %{SELECT * FROM usuario WHERE EXISTS (SELECT * FROM usuario WHERE login ='#{@usuario['login']}')} #O usuario já existe?
  if password_valido == false ;
    @error = "PASSWORD INVÁLIDO!"
    render 'usuario/createerror'
    return
  end
  if result.any?  do;                                                                                                           #Se sim, erro
      @error = "USUARIO EXISTENTE!"
      render 'Usuario/createerror'
      return
  end
  else                                                                                                                          #Se não, salve
    @usuario.save!
  end
end
  
  def consulta                                                               #Listando tudo
    @consulta = Usuario.all
  end
def update                                                                  #Função para deletar um cliente dado o CPF
    @update = params['login']
    sql = ActiveRecord::Base.connection
    result = sql.execute %{SELECT * FROM usuario WHERE login ='#{@update}'}   #O usuario dado existe?
    if result.any?  do;
      sql.execute %{DELETE FROM usuario WHERE login = '#{@update}'}          #Se existe, delete
      render 'usuario/update'
    end
    else
      render 'usuario/delerror'                                             #Se nao existe, erro
    end
end
  private
  def usuario_params
        params.require(:usuario).permit(:login, :password)
  end
  def del_params
    params.permit(:login)
  end
end

