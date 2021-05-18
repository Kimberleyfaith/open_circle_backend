class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    if @comments
      render :json => @comments
      
    else
      render json: {
        status: 500,
        errors: ['no comments found']
      }
    end
  end

  def show
    @comment = Comment.find(params[:id])
    if @comment
      render json: {
        comment: @comment
      }
    else
      render json: {
        status: 500,
        errors: ['comment not found']
      }
    end
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: {
        status: :created,
        comment: @comment
      }
    else
      render json: {
        status: 500,
        errors: ['error: comment not created']
      }
    end
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end

    def destroy
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to secrets_url, notice: "Comment was successfully deleted." }
        format.json { head :no_content }
      end
    end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
end
