class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @recipes = Recipe.all
  end

  def new
    @user = User.new
  end 

  def create 
    user = User.create(user_params)

    if user.valid? 
      cookies[:user_id] = user.id
      redirect_to new_survey_result_path
    else
      flash[:my_errors] = user.errors.full_messages
      redirect_to new_user_path
    end 
  end 
    
  private 
    
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end 

end
