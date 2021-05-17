class CommentsController < ApplicationRecord

  def index
    @comments = Comment.all
    if @comments
      render json: {
        posts: @comments
      }
    else
      render json: {
        status: 500,
        errors: ['no comments found']
      }
    end
  end

end
