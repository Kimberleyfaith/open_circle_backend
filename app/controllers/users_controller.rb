class UsersController < ApplicationController

  def index
    circle = Circle.find params[:circle_id]
    @users = circle.users
    if @users
      render :json => @users
    else
      render json: {
        status: 500,
        errors: ['no users found']
      }
    end
end
def show
    @user = User.find(params[:id])
   if @user
      render json: {
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: ['user not found']
      }
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login!
      render json: {
        status: :created,
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: @user.errors.full_messages
      }
    end
  end
private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :profile_image, :cover_image, :bio, :birthday, :location)
  end

end
