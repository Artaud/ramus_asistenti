class CreateAsistentAkces < ActiveRecord::Migration
  def change
    create_table :asistent_akces do |t|
      t.references :akce, index: true
      t.references :asistent, index: true
      t.text :poznamka

      t.timestamps
    end
  end
end
