class CreateMyStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :my_stocks do |t|
      t.string :ref_stock
      t.integer :quantity

      t.timestamps
    end
  end
end
