class WinesController < ApplicationController
  def index
    @wines = Wine.all
    if params[:query].present?
      name_query = "name @@ :name"
      @wines = @wines.where(name_query, name: "%#{params[:query][:name]}%") unless params[:query][:year].blank?
      @wines = @wines.where(year: params[:query][:year].to_i) unless params[:query][:year].blank?
      @wines = @wines.where(color: params[:query][:color]) unless params[:query][:color].blank?
      @wines = @wines.where(region: params[:query][:region]) unless params[:query][:region].blank?
    end
  end

  def show
    @wine = Wine.find(params[:id])
    @review = Review.new
  end
end
