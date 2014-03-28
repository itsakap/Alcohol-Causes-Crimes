class AddPopulationsToCounties < ActiveRecord::Migration
  def change
    add_column :counties, :population, :integer, default:0
  end
end
