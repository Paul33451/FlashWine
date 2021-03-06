class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @options = @question.options
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])

    @answer = Answer.new(answer_params)
    @answer.option.question = @question
    @answer.option = @question.options[answer_params[:option_id].to_i - 1]
    # byebug

    @answer.user = current_user
    @answer.save!
    @quiz = current_user.answers.last.option.question.quiz

    if @question.id < 5
      redirect_to new_question_answer_path(@question.id + 1)
    else @question.id == 5
      redirect_to quiz_path(@quiz)
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:option_id)
  end
end
