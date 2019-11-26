class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :region
      t.string :appellation
      t.string :cepage
      t.string :color
      t.string :name
      t.string :flavour
      t.date :year

      t.timestamps
    end
  end
end
