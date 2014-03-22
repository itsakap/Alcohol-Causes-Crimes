class CreateZipCities < ActiveRecord::Migration
  def change
    create_table :zip_cities do |t|
      t.string :zipcode
      t.string :city

      t.timestamps
    end
  end
end
