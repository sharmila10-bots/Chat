class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?

#few authentication helper methods


    def current_user#this helper method helps to get to know the infomation of the user who logged in
        @current_user ||= begin
        User.find(session[:user_id]) if session[:user_id]
      end
    end
    
    
    

    def logged_in?#boolean value(true or false)
        !!current_user



    end    

    
    def require_user
        if !logged_in?
            redirect_to login_path
        end

    end    






end
