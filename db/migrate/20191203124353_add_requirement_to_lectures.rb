class AddRequirementToLectures < ActiveRecord::Migration[5.2]
  def change
    add_column :lectures, :requirement, :integer
  end
end
