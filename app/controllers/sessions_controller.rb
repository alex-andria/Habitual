class SessionsController < ApplicationController
    skip_before_action :authorized_user, only: [:login]
    def login
        user = User.find_by(name:params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json:user, status: :ok
    end 

    def logout
        session.delete :user_id
        head :no_content
    end 
end