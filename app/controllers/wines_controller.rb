class WinesController < ApplicationController
  def index
    @wines = Wine.all
    @wine = Wine.new
    if params[:query].present?
      name_query = "name @@ :name"
      @wines = @wines.where(name_query, name: "%#{params[:query][:name]}%") unless params[:query][:name].blank?
      @wines = @wines.where(year: params[:query][:year].to_i) unless params[:query][:year].blank?
      @wines = @wines.where(color: params[:query][:color]) unless params[:query][:color].blank?
      @wines = @wines.where(region: params[:query][:region]) unless params[:query][:region].blank?
    end
  end

  def show
    @wine = Wine.find(params[:id])
    @review = Review.new
    @recommendation = Recommendation.new
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)
    @wine.save
      respond_to do |format|
        format.html {redirect_to wines_path}
        format.js
      end
  end

  private


  def wine_params
    params.require(:wine).permit(:name, :cepage, :color, :year, :appellation, :flavour, :photo )
  end


end
