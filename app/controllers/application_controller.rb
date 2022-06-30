class ApplicationController < ActionController::Base
    # before_action :reset_session
    helper_method :current_user
    # helper_method :hello_user

    def current_user
        return @current_user if @current_user.present?

        if session[:user_id].present?
            @current_user  = User.find(session[:user_id])
        else
            puts "welcome user"
            @current_user = User.randomize
            session[:user_id] = @current_user.id
            puts "hello user"
            @message = Message.new()
            @message.user_id = @current_user.id
            @message.chatroom_id = 1
            @message.chat = "Welcome New User!" 
            @message.user = current_user
            @message.save 
            @current_user
        end

        @current_user
    end

    # def hello_user
    #     puts "hello user"
    #     @message = Message.new(:chat, :user_id, :chatroom_id)
    #     @message.user = current_user
    #     @message.save 
    # end

    def destroy
        session.delete :user_id
    end

    private

    def message_params
        params.require(:message).permit(:chat, :user_id, :chatroom_id)
    end
end


