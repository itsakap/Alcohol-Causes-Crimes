class CreateCityCounties < ActiveRecord::Migration
  def change
    create_table :city_counties do |t|
      t.string :city_name
      t.string :state
      t.string :code
      t.string :county_name

      t.timestamps
    end
  end
end
