class CreateTypAkces < ActiveRecord::Migration
  def change
    create_table :typ_akces do |t|
      t.text :typ

      t.timestamps
    end
  end
end
