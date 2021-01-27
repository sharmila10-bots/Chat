class SessionsController < ApplicationController
   
    def new
    end

    def create
        #byebug
        user=User.find_by(username: params[:session][:username])#aaaa

        if user && user.authenticate(params[:session][:password])
            session[:user_id]=user.id#1

            redirect_to root_path
        else
            render 'new'    
        end          
    end    


    def destroy
       session[:user_id]=nil
       redirect_to login_path


    end    

    
end    
