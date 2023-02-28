class PinsController < ApplicationController
  def top
  end

  def new
    @pin = Pin.new
  end

  def index
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def edit
  end

  def create
    @pin = Pin.new(post_params)
    if @pin.save
      redirect_to pin_path(@pin.id)
    else
      redirect_to request.referer
    end
  end

  protected

  def post_params
    params.require(:pin).permit(:name, :body,:lat,:lng)
  end

end
