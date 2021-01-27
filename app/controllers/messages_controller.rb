class MessagesController < ApplicationController

    def create
        #byebug
        message = current_user.messages.build(params.require(:message).permit(:body))
        if message.save
            ActionCable.server.broadcast "chatroom_channel",
                                                mod_message: message.body

        end    
    end    


end    
