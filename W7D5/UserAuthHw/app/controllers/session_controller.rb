class SessionController < ApplicationController
    def new 
        render :new
    end
    
    def create
        @user = User.find_by_credentials(
            params[:user][:email],
            params[:user][:password])
        if @user
            log_in!(@user)
            redirect_to root_url
        else
            flash.now[:errors] = ["Invalid username or password"]
            redirect_to new_session_url
        end
    end

    def destroy
        loggout!
        redirect_to new_session_url
    end
end
