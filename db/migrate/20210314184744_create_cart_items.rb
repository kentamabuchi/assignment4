class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.integer :amount
      t.timestamp :create_at, default: Time.now
      t.timestamp :update_at, default: Time.now
      t.integer :item_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
