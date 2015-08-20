class PinsController < ApplicationController

  def index
  end

  def new
    @pin = pin.new
  end

  def create
    @pin = pin.new(pin_params)
  end


  private

  def pin_params
    params.require(:pin).permit(:title, :description)
  end
end
