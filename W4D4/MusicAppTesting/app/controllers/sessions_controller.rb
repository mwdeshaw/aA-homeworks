class SessionsController < ApplicationController

    def create
        user = User.find_by_credentials(
            params[:user][:email],
            params[:user][:password]
        )
        unless user.nil?
            log_in_user!(user)
            # redirect_to user_url(user.id) #show
            redirect_to "/bands" #show
        else
            flash.now[:errors] = ["Incorrect username and/or password"]
            render :new
        end
    end

    def new
        render :new
    end

    def destroy
        # current_user.reset_session_token!
        # session[:session_token] = nil
        loggout_user!
        redirect_to new_session_url
    end
end
