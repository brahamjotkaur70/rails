class SessionsController < ApplicationController
    def new
        
    end
  
    def create

        redirect_to posts_path
    end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully Signed Out'
    redirect_to welcome_path
  end
  end
  
