class CreateAsistentAttrBools < ActiveRecord::Migration
  def change
    create_table :asistent_attr_bools do |t|
      t.boolean :hodnota
      t.references :attr_bool, index: true
      t.references :asistent, index: true

      t.timestamps
    end
  end
end
