class MessagesController < ApplicationRecord

  def index
    @messages = Message.all
    if @messages
      render json: {
        posts: @messages
      }
    else
      render json: {
        status: 500,
        errors: ['No messages found']
      }
    end
  end

end
