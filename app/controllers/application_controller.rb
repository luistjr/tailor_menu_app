class ApplicationController < ActionController::Base

    def find_current_user
        # @current_alien = Alien.find(cookies[:alien_id])
        @current_user = User.find_by(id: cookies[:user_id])
    end 

end
