class ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
    if @chatrooms
      render json: {
        chatrooms: @chatrooms
      }
    else
      render json: {
        status: 500,
        errors: ['no chatrooms found']
      }
    end
  end

end
