class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
    @questions = @quiz.questions
    @count_good_answer = 0

    user = current_user
    user_first_score = user.score
    result = []
    user.answers.each do |answer|
      result << answer.option if answer.option.right == true
    end
    user.score = result.size * 40
    user.save
    @score_quiz = user.score - user_first_score
  end
end
