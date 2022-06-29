class ApplicationController < ActionController::Base
    # before_action :reset_session
    helper_method :current_user

    def current_user
        return @current_user if @current_user.present?
        if session[:user_id].present?
            @current_user  = User.find(session[:user_id])
        else
            @current_user = User.randomize
            session[:user_id] = @current_user.id
            @current_user   
        end

        if @current_user.nil?
            @current_user = User.randomize
            session[:user_id] = @current_user.id
            @current_user
            
        end

        @current_user
    end

    def destroy
        session.delete :user_id
    end
end


