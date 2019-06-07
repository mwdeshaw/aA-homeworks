class UsersController < ApplicationController
    def create
        @user = User.new(user_params)
        if @user.save
            log_in_user!(@user)
            redirect_to new_session_url #check this element..
        else
            flash.now[:errors] = @user.errors.full_messages
            render :new
        end
    end

    def show
        render :show
    end

    def new
        @user = User.new
        render :new
    end

    private
    def user_params
        params.require(:user).permit(:email, :password)
    end

end
