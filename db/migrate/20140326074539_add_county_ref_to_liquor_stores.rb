class AddCountyRefToLiquorStores < ActiveRecord::Migration
  def change
    add_reference :liquor_stores, :county, index: true
  end
end
