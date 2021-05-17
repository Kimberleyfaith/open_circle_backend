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

end
