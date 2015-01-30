class CreateAsistents < ActiveRecord::Migration
  def change
    create_table :asistents do |t|
      t.text :jmeno
      t.text :email
      t.text :telefon
      t.text :poznamka
      t.boolean :ma_mlcenlivost

      t.timestamps
    end
  end
end
