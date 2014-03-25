class CreateCounties < ActiveRecord::Migration
  def change
    create_table :counties do |t|
      t.string :county_name
      t.string :state
      t.string :code
      t.float :pc_liquor_stores
      t.float :pc_violent_crimes
      t.integer :population

      t.timestamps
    end
  end
end
