class AsistentAkce < ActiveRecord::Base
  belongs_to :akce
  belongs_to :asistent
end
