class RecommendationsController < ApplicationController

  def create
    @recommendation = Recommendation.new
    @recommendation.sender_id = current_user.id
    @recommendation.recipient_id = params["recommendation"][:recipient_id].to_i

    @recommendation.wine = Wine.find(params[:wine_id].to_i)
    if @recommendation.save
      redirect_to root_path
    else
      redirect_to wine_path(@wine)
    end
  end

end
