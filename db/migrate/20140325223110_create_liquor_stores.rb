class CreateLiquorStores < ActiveRecord::Migration
  def change
    create_table :liquor_stores do |t|
      t.string :license_type

      t.timestamps
    end
  end
end
