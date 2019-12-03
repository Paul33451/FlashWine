class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.string :title
      t.string :content
      t.references :lecture, foreign_key: true

      t.timestamps
    end
  end
end
