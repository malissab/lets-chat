class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        if @current_user.nil?
            @current_user = User.randomize
            session[:user_id] = @current_user.id
            @current_user
            
        end

        @current_user
    end
            
end


