class AddLiquorStoreCountsToCounties < ActiveRecord::Migration
  def change
    add_column :counties, :liquor_store_count, :integer, :default => 0
  end
end
