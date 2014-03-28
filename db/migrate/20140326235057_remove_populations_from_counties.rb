class RemovePopulationsFromCounties < ActiveRecord::Migration
  def change
    remove_column :counties, :population, :integer
  end
end
