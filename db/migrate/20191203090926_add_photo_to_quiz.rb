class AddPhotoToQuiz < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :photo, :string
  end
end
