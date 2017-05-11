class AddMyWineCountToWines < ActiveRecord::Migration[5.0]
  def change
    add_column :wines, :my_wines_count, :integer
  end
end
