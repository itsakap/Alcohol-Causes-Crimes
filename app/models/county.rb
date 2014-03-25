class County < ActiveRecord::Base

  has_many :cities
  has_many :liquor_stores

end
