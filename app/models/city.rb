class City < ActiveRecord::Base
  belongs_to :county
  validates_uniqueness_of :city_name, scope: :state
end
