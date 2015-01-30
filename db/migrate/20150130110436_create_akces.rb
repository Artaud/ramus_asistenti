class CreateAkces < ActiveRecord::Migration
  def change
    create_table :akces do |t|
      t.datetime :termin_od
      t.datetime :termin_do
      t.text :nazev
      t.references :typ_akce, index: true

      t.timestamps
    end
  end
end
