class ChatroomsController < ApplicationController

  def index
    @chatrooms = @current_user.chatrooms
    if @chatrooms
      render :json => @chatrooms
      
    else
      render json: {
        status: 500,
        errors: ['no chatrooms found']
      }
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    if @chatroom
      render json: {
        chatroom: @chatroom
      }
    else
      render json: {
        status: 500,
        errors: ['chatroom not found']
      }
    end
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      render json: {
        status: :created,
        chatroom: @chatroom
      }
    else
      render json: {
        status: 500,
        errors: ['error: chatroom not created']
      }
    end
  end

  def update
    respond_to do |format|
      if @chatroom.update(chatroom_params)
        format.html { redirect_to @chatroom, notice: "Chatroom was successfully updated." }
        format.json { render :show, status: :ok, location: @chatroom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chatroom.errors, status: :unprocessable_entity }
      end
    end

    def destroy
      @chatroom.destroy
      respond_to do |format|
        format.html { redirect_to secrets_url, notice: "Chatroom was successfully deleted." }
        format.json { head :no_content }
      end
    end

  end

  private
  def chatroom_params
    params.require(:chatroom).permit(:title)
  end

end
