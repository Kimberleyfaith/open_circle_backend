class LikesController < ApplicationController

  def index
    @likes = Like.all
    if @likes
      render json: {
        likes: @likes
      }
    else
      render json: {
        status: 500,
        errors: ['no likes found']
      }
    end
  end

  def show
    @like = Like.find(params[:id])
    if @like
      render json: {
        like: @like
      }
    else
      render json: {
        status: 500,
        errors: ['like not found']
      }
    end
  end

  def create
    @like = Like.new(chatroom_params)
    if @like.save
      render json: {
        status: :created,
        like: @like
      }
    else
      render json: {
        status: 500,
        errors: ['error: like not created']
      }
    end
  end

  def update
    respond_to do |format|
      if @like.update(like_params)
        format.html { redirect_to @like, notice: "like was successfully updated." }
        format.json { render :show, status: :ok, location: @like }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end

    def destroy
      @Like.destroy
      respond_to do |format|
        format.html { redirect_to secrets_url, notice: "Like was successfully deleted." }
        format.json { head :no_content }
      end
    end

    private
    def like_params
      params.require(:like).permit(:user_id, :post_id)
    end

end
