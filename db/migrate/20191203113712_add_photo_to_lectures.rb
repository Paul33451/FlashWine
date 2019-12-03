class AddPhotoToLectures < ActiveRecord::Migration[5.2]
  def change
    add_column :lectures, :photo, :string
  end
end
