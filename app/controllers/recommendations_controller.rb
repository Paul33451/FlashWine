class RecommendationsController < ApplicationController

  def create
    @recommendation = Recommendation.new
    @recommendation.sender_id = current_user.id
    @recommendation.recipient_id = params["recommendation"][:recipient_id].to_i
    @wine = Wine.find(params[:wine_id].to_i)
    @recommendation.wine = @wine
    if @recommendation.save
      redirect_to wine_path(@wine)
    else
      redirect_to wine_path(@wine)
    end
  end


  def destroy
    @recommendation = Recommendation.find(params[:id])
    @recommendation.delete
  end
end
