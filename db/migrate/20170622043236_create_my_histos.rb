class CreateMyHistos < ActiveRecord::Migration[5.1]
  def change
    create_table :my_histos do |t|
      t.references :my_stock, foreign_key: true
      t.string :ref_stock
      t.integer :old_stock
      t.integer :new_stock

      t.timestamps
    end
  end
end
