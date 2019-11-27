class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
    @questions = @quiz.questions
    @answers = current_user.answers.last.option.question.quiz.answers.where(user: current_user)

  end
end

# Toutes les réponses au dernier quiz :
# u.answers.last.option.question.quiz.answers.where(user: u)

 #bonne réponse de la question :  Answer.option.question.options.where(right: true)
