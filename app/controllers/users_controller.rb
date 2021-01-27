class UsersController < ApplicationController
  def index
    @user=User.all

  end

  def create
    #byebug
    @user=User.new(params.require(:user).permit(:username,:password))
    if @user.save
      redirect_to login_path
    else
      render 'new'
    end        
  end

  def new
    
  end  
end
