class AddCountyRefToCities < ActiveRecord::Migration
  def change
    add_reference :cities, :county, index: true
  end
end
