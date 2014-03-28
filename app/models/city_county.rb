class CityCounty < ActiveRecord::Base
  validates_uniqueness_of :city_name, :scope => [:state, :county_name]
end
