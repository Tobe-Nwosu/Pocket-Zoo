class FindingsController < ApplicationController

  def index
  end

  def show
    @finding = Finding.find(params[:id])
  end

  def new
    # @animal = Animal.find(params[:id])
    @finding = Finding.new
  end

  def finding_params
    params.require(:finding).permit(:date, :photo, :comment)
  end
end
