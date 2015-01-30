class CreateAttrDates < ActiveRecord::Migration
  def change
    create_table :attr_dates do |t|
      t.text :nazev

      t.timestamps
    end
  end
end
