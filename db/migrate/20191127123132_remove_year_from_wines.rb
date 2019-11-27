class RemoveYearFromWines < ActiveRecord::Migration[5.2]
  def change
    remove_column :wines, :year, :date
  end
end
