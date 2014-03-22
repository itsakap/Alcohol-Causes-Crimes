class CreateAbcLicenses < ActiveRecord::Migration
  def change
    create_table :abc_licenses do |t|
      t.string :dba_name
      t.string :primary_name
      t.string :premise_street_address
      t.string :premise_city
      t.string :premise_zipcode
      t.string :license_or_application
      t.string :months_of_term
      t.string :mail_street_address
      t.string :mail_city
      t.string :mail_state
      t.string :mail_zipcode
      t.string :premise_county
      t.float :premise_census_tract
      t.integer :district_office_code
      t.boolean :master_indicator
      t.integer :geocode
      t.string :fee_code
      t.integer :duplicate_counts

      t.timestamps
    end
  end
end
