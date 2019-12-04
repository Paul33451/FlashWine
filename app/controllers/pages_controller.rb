class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @recommendation = Recommendation.new
    @user = current_user
    @recommendations = Recommendation.where(recipient_id: current_user)
    @reviews = Review.where(user_id: current_user)
  end
end
