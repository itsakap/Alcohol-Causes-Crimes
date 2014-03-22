class CreateUniformCrimeReports < ActiveRecord::Migration
  def change
    create_table :uniform_crime_reports do |t|
      t.string :city
      t.string :state
      t.string :state_abbv
      t.integer :city_population
      t.integer :number_of_violent_crimes
      t.integer :murder_and_nonnegligent_manslaughter
      t.integer :forcible_rape
      t.integer :robbery
      t.integer :aggravated_assault
      t.integer :property_crime
      t.integer :burglary
      t.integer :larceny_theft
      t.integer :motor_vehicle_theft
      t.integer :arson

      t.timestamps
    end
  end
end
