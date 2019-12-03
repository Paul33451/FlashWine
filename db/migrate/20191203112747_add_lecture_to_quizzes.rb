class AddLectureToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quizzes, :lecture, foreign_key: true
  end
end
