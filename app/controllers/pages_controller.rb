class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @recommendation = Recommendation.new
    @user = current_user
    @recommendations = Recommendation.where(recipient_id: current_user)
    @reviews = Review.where(user_id: current_user)
    result = []
    @user.answers.each do |answer|
      result << answer.option if answer.option.right == true
    end
    @user.score = result.size * 40
    @user.save
  end
end
