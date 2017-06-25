class CreateHistorics < ActiveRecord::Migration[5.1]
  def change
    create_table :historics do |t|
      t.string :ref_stock
      t.integer :old_quantity
      t.integer :new_quantity

      t.timestamps
    end
  end
end
