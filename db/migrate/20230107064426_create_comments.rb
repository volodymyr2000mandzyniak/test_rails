class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string  :body
      t.integer :user_id
      #поліморфні звя'зки
      t.integer :commentable_id
      t.string  :commentable_type
      t.timestamps
    end
  end
end
