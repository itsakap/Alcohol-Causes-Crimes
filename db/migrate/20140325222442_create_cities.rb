class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :population
      t.integer :violent_crimes
      t.string :city_name
      t.string :state
      t.string :code

      t.timestamps
    end
  end
end
