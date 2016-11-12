class UsersController < ApplicationController  
  def new
    @user = User.new 
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    redirect_to candidatos_path
  end
  def show
    @user = User.find(params[:id])
  end
  
private

  def user_params
    params.require(:user).permit(
      :username,
      :email,
      :password,
      :password_confirmation
    )
  end

end