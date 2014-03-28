# #we have to require the 'csv' library in order to play with the csv files, mmmkay?
# LiquorStore.destroy_all
# County.destroy_all
# City.destroy_all
# # CityCounty.destroy_all

# used_states = ['california']

# #for lookup on line 25
# states_codes_csv = CSV.read("db/states_codes.csv", headers: true)
# nl = 0
# #seed liquor store data (also beer/wine, etc)
# CSV.foreach("db/abclicense.csv", headers: true) do |row|

# #avoid undefined method for nil errors
#     if row["premise_county"]
#       city_name = row["premise_city"].downcase
#       county_name = row["premise_county"].downcase
#       county_state_code = row["premise_state"].downcase
#       county_state_full = states_codes_csv.find{|s| s['Abbreviation'].downcase == county_state_code}["State"].downcase
#       CityCounty.create(county_name:county_name, code:county_state_code, state:county_state_full, city_name:city_name)
#       #find this liquor store's County.  A county is a subdivision of a state so we need the county's name as well as the state.  For state, we want both the two-letter abbreviation, and the full name.
      
#       #Since the table lists states by two-letter abbreviation, find or create by county name & two-letter abbreviation (aka code)
      
#       c = County.find_or_create_by(county_name:county_name, code: county_state_code, state:county_state_full)
#       #increment # of liquor stores
#       c.liquor_store_count +=1
#       #save for good measure
#       c.save
#     end

#     puts (nl += 1)
# end
county_id_csv = CSV.read("db/us-county-names.csv", headers: true, col_sep: "\t")
CSV.open("db/crime_magnitudes.csv","w") do |csv|
  csv << ["id", "magnitude"]
  County.all.each do |county|
    county_id = county_id_csv.find{|row| row["name"].downcase == county.county_name}["id"]
    csv << ["0#{county_id}", county.pc_violent_crimes]
  end
end
#states_codes_csv.find{|row| row['Abbreviation'].downcase == belonging_county.code}["State"].downcase

# #already seeded, took 40 minutes, don't do it again
# # CSV.foreach("db/city_county.csv") do|row|
# #   if(row[3] && row[4] && row[5])
# #     c = CityCounty.find_or_create_by(city_name: row[3].downcase, code: row[4].downcase, county_name: row[5].downcase)
# #   end
# # end

# nl = 0
# #seed UCR data
# CSV.foreach("db/fbi.csv", headers: true) do |row|
#   state_name_full = row["state"].downcase
#   puts (nl+=1)
#   if state_name_full == "california"
#     city = City.create(city_name:row["city"].downcase, state: row["state"].downcase, population: row["population"].to_i, violent_crimes: row["violent_crime"].to_i)
#     city.code = states_codes_csv.find{|row| row['State'].downcase == city.state}["Abbreviation"].downcase
#     city.save
#     cc = CityCounty.find_by(city_name:city.city_name, code: city.code)
#     if cc
#       belonging_county = County.find_or_create_by(county_name: cc.county_name, code: cc.code)
#       unless belonging_county.population
#         belonging_county.population = 0
#         belonging_county.state = states_codes_csv.find{|row| row['Abbreviation'].downcase == belonging_county.code}["State"].downcase
#       end
      

#       belonging_county.population += city.population
#       belonging_county.violent_crime_count += city.violent_crimes
#       belonging_county.save
#     end
#   end
# end
# nl = 0
# County.all.each do |county|
#   puts (nl += 1)
#   if county.population > 0
#     county.pc_liquor_stores = county.liquor_store_count / county.population
#     county.pc_violent_crimes = county.violent_crime_count / county.population
#   end
# end
# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
