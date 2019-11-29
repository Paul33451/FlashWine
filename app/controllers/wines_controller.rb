class WinesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "\
        @wines.name  @@ :query \
        OR @wines.color @@ :query \
        OR @wines.year @@ :query \
        OR @wines.cepage @@ :query \
      "
      @wines = Wine.where(sql_query, query: "%#{params[:query]}%")
    else
    @wines = Wine.all
   end
  end

  def show
    @wine = Wine.find(params[:id])
    @review = Review.new
  end
end
