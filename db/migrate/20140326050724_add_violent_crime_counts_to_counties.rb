class AddViolentCrimeCountsToCounties < ActiveRecord::Migration
  def change
    add_column :counties, :violent_crime_count, :integer, :default => 0
  end
end
