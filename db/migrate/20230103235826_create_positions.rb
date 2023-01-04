class CreatePositions < ActiveRecord::Migration[7.0]
  def change
    create_table :positions do |t|
      t.integer :cart_id
      t.integer :item_id
      #кількість одиниць товару в корзині 
      t.integer :quantity #=>кількість
      t.timestamps
    end
  end
end
