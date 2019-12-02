class WinesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR region ILIKE :query"
      @wines = Wine.where(sql_query, query: "%#{params[:query]}%")
    else
      @wines = Wine.all
    end
  end

  def show
    @wine = Wine.find(params[:id])
    @review = Review.new
  end

  private

  def wine_params
    params.require(:wine).permit(:name)
  end


end
