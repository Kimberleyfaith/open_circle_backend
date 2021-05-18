class MessagesController < ApplicationController

  def index
    @messages = Message.all
    if @messages
      render :json => @messages

      }
    else
      render json: {
        status: 500,
        errors: ['No messages found']
      }
    end
  end

  def show
    @message = Message.find(params[:id])
    if @message
      render json: {
        message: @message
      }
    else
      render json: {
        status: 500,
        errors: ['message not found']
      }
    end
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      render json: {
        status: :created,
        message: @message
      }
    else
      render json: {
        status: 500,
        errors: ['error: message not created']
      }
    end
  end


  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: "Message was successfully updated." }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end

  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to secrets_url, notice: "Message was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
  def message_params
    params.require(:message).permit(:body)
  end

end
end
