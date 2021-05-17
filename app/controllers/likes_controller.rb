class LikesController < ApplicationRecord

  def index
    @likes = Like.all
    if @likes
      render json: {
        posts: @likes
      }
    else
      render json: {
        status: 500,
        errors: ['no likes found']
      }
    end
  end

end
