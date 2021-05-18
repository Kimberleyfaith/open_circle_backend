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

  def show
    @circle = Circle.find(params[:id])
    if @circle
      render json: {
        circle: @circle
      }
    else
      render json: {
        status: 500,
        errors: ['circle not found']
      }
    end
  end

  def create
    @circle = Circle.new(circle_params)
    if @circle.save
      render json: {
        status: :created,
        circle: @circle
      }
    else
      render json: {
        status: 500,
        errors: ['error: circle not created']
      }
    end
  end

  def update
    respond_to do |format|
      if @circle.update(circle_params)
        format.html { redirect_to @circle, notice: "Circle was successfully updated." }
        format.json { render :show, status: :ok, location: @circle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @circle.errors, status: :unprocessable_entity }
      end
    end
    
    def destroy
      @circle.destroy
      respond_to do |format|
        format.html { redirect_to secrets_url, notice: "Circle was successfully deleted." }
        format.json { head :no_content }
      end
    end

  private
  def circle_params
    params.require(:circle).permit(:name, :image)
  end
end
end
