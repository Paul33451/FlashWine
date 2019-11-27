class WinesController < ApplicationController
  def index
    @wines = Wine.all
  end

  def show
    @wine = Wine.find(params[:id])
    @review = Review.new
  end
end
