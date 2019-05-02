class UsersController < ApplicationController

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            login(@user)
            redirect_to bands_url
        else
            flash.now[:errors] = @user.errors.full_messages
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
        if @user
            render json: @user.email
            ###redirect_to user_url
        else
            flash.now[:errors] = @user.errors.full_messages
            redirect_to bands_url
        end
    end

    def user_params
        params.require(:user).permit(:email, :password)
    end

end