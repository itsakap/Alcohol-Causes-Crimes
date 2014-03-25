#we have to require the 'csv' library in order to play with the csv files, mmmkay?

CSV.foreach("db/abclicense.csv", headers: true) do |row|

  LiquorStore.create(license_type:row["license_type"])
   
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
