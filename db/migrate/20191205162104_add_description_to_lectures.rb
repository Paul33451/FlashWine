class AddDescriptionToLectures < ActiveRecord::Migration[5.2]
  def change
    add_column :lectures, :description, :string
  end
end
