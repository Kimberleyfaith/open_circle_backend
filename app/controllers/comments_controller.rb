class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    if @comments
      render json: {
        comments: @comments
      }
    else
      render json: {
        status: 500,
        errors: ['no comments found']
      }
    end
  end

end
