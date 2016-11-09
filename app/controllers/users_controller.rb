class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def cadastrar
  end
  def form
   
  end
  
  def usernew                                                   #Novo usuario
    @user = User.new(cliente_params)                      
    @user['login'] = params[:user]['login']
    @user['password'] = params[:user]['password']
    substituir = ActiveRecord::Base.connection
    result = substituir.execute %{SELECT * FROM user WHERE EXISTS (SELECT * FROM user WHERE login ='#{@user['login']}')} #O usuario já existe?
  if password_valido == false ;
    @error = "PASSWORD INVÁLIDO!"
    render 'user/createerror'
    return
  end
  if result.any?  do;                                                                                                           #Se sim, erro
      @error = "USUARIO EXISTENTE!"
      render 'Usuario/createerror'
      return
  end
  else                                                                                                                          #Se não, salve
    @user.save!
  end
  end
  
  def consulta                                                               #Listando tudo
    @consulta = User.all
  end
  def update                                                                  #Função para deletar um cliente dado o CPF
    @update = params['login']
    sql = ActiveRecord::Base.connection
    result = sql.execute %{SELECT * FROM user WHERE login ='#{@update}'}   #O usuario dado existe?
    if result.any?  do;
      sql.execute %{DELETE FROM user WHERE login = '#{@update}'}          #Se existe, delete
      render 'usuario/update'
    end
    else
      render 'usuario/delerror'                                             #Se nao existe, erro
    end
  end
  private
  def user_params
        params.require(:user).permit(:login, :password)
  end
  def del_params
    params.permit(:login)
  end
end

