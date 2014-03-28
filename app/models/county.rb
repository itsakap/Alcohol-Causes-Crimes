class County < ActiveRecord::Base

  has_many :cities
  has_many :liquor_stores
  validates_uniqueness_of :county_name, scope: :state
end
