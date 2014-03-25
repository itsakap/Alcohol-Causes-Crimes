class AddNumberOfLiquorStoresToCounties < ActiveRecord::Migration
  def change
    add_column :counties, :number_of_liquor_store, :integer
  end
end
