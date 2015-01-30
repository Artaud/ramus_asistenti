class CreateAttrTexts < ActiveRecord::Migration
  def change
    create_table :attr_texts do |t|
      t.text :nazev

      t.timestamps
    end
  end
end
