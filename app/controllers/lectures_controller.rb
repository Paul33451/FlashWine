class LecturesController < ApplicationController
  def index
    @lectures = Lecture.where("requirement <= #{current_user.score}")
  end

  def show
    @lecture = Lecture.find(params[:id])
  end

end
