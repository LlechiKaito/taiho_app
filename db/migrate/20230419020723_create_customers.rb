class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :post_code, null: false
      t.string :address,   null: false
      t.integer :order_id, null: false
      t.timestamps
    end
  end
end
