class CirclesController < ApplicationController

  def index
    @circles = Circle.all
    if @circles
      render json: {
        circles: @circles
      }
    else
      render json: {
        status: 500,
        errors: ['no circles found']
      }
    end
  end

end
