class UsersController < ApplicationController
  def index
  end

  def show
    # @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end 

  def create 
    user = User.create(user_params)

    if user.valid? 
      session[:user_id] = user.id
      redirect_to new_survey_result_path
    else
      flash[:my_errors] = user.errors.full_messages
      redirect_to new_user_path
    end
  end 
    
  private 
    
  def user_params
    params.require(:user).permit(:username, :email, :password_digest)
  end 

end
