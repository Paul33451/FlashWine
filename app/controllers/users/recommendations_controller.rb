class Users::RecommendationsController < ApplicationController
  def index
    @recommendations = current_user.recommendations
  end

end
