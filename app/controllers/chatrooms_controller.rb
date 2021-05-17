class ChatroomsController < ApplicationRecord

  def index
    @chatrooms = Chatroom.all
    if @chatrooms
      render json: {
        posts: @chatrooms
      }
    else
      render json: {
        status: 500,
        errors: ['no comments found']
      }
    end
  end

end
