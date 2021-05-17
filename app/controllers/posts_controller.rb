class PostsRecord < ApplicationController

  def index
    @posts = Post.all
    if @posts
      render json: {
        posts: @posts
      }
    else
      render json: {
        status: 500,
        errors: ['no posts found']
      }
    end
  end
end
