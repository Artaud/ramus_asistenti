class Akce < ActiveRecord::Base
  belongs_to :typ_akce
  has_many :asistent_akces
end
