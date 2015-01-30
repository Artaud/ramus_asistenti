class Asistent < ActiveRecord::Base
  has_many :asistent_akces
  has_many :asistent_attr_dates
  has_many :asistent_attr_bools
end
