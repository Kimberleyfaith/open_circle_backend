class PostsController < ApplicationController

  def index
    # @posts = Post.all
    @posts = Post.where(circle_id: params[:circle_id])
    if @posts
      render :json => @posts, :include => [:user]
    else
      render json: {
        status: 500,
        errors: ['no posts found']
      }
    end
  end

  def show
    @post = Post.find(params[:id])
    if @post
      render json: {
        post: @post
      }
    else
      render json: {
        status: 500,
        errors: ['post not found']
      }
    end
  end

  def create
    puts "CREATE METHOD TRIGGERED"
    @post = Post.new(post_params)
    if @post.save
      render json: {
        status: :created,
        post: @post
      }
    else
      render json: {
        status: 500,
        errors: ['error: post not created']
      }
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end

    def destroy
      @post.destroy
      respond_to do |format|
        format.html { redirect_to secrets_url, notice: "Post was successfully deleted." }
        format.json { head :no_content }
      end
    end

  private
  def post_params
    params.require(:post).permit(:image, :content, :likes, :user_id)
  end
end
end
