class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @options = @question.options
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.user = current_user
    @answer.save!

    if @question.id < 2
      redirect_to new_question_answer_path(@question.id + 1)
    else
      redirect_to root_path
    end
    raise
  end

    private

  def answer_params
    params.require(:answer).permit(:option_id)
  end
end
