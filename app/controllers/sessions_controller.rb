class SessionsController < ApplicationController

    def new
    end

    def login
        user = User.find_by(username: params[:session][:username])
    
        if user #&& alien.authenticate(params[:session][:password])
          cookies[:user_id] = user.id
          redirect_to user_path(user)
        else
          flash[:errors] = "Username or Password does not match" 
          redirect_to new_login_path
        end 
    end 


    def create
      session[:user_id] = params[:user.id]
      redirect_to '/survey_results/new'
    end 

    # def create
    #     # no strong params cause there is no mass assignment
    #     @user = User.find_by(username: params[:username])
    #     if @user && @user.authenticate(params[:password])
    #       redirect_to @user
    #     else
    #       redirect_to login_path
    #     end
    # end

end 