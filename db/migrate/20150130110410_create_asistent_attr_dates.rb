class CreateAsistentAttrDates < ActiveRecord::Migration
  def change
    create_table :asistent_attr_dates do |t|
      t.datetime :hodnota
      t.references :asistent, index: true
      t.references :attr_date, index: true

      t.timestamps
    end
  end
end
