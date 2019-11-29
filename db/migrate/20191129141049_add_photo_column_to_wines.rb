class AddPhotoColumnToWines < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :photo, :string
  end
end
