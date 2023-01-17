class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.integer :item_id
      t.string  :file
      t.integer :imageable_id
      t.string  :imageable_type
      t.timestamps
    end
  end
end
