class MessagesController < ApplicationController

  def index
    @messages = Message.all
    if @messages
      render json: {
        messages: @messages
      }
    else
      render json: {
        status: 500,
        errors: ['No messages found']
      }
    end
  end

end
