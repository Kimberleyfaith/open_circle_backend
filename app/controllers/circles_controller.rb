class CirclesController < ApplicationRecord

  def index
    @circles = Circle.all
    if @circles
      render json: {
        posts: @circles
      }
    else
      render json: {
        status: 500,
        errors: ['no circles found']
      }
    end
  end

end
