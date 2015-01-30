class CreateAttrBools < ActiveRecord::Migration
  def change
    create_table :attr_bools do |t|
      t.text :nazev

      t.timestamps
    end
  end
end
