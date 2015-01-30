class CreateAsistentAttrTexts < ActiveRecord::Migration
  def change
    create_table :asistent_attr_texts do |t|
      t.text :hodnota
      t.references :attr_text, index: true
      t.references :asistent, index: true

      t.timestamps
    end
  end
end
