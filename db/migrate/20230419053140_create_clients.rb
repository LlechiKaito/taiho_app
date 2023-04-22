class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.references :user,     null: false, foreign_key: true
      t.string :name,         null: false
      t.string :post_code,    null: false
      t.string :address,      null: false
      t.string :phone_number, null: false
      t.timestamps
    end
  end
end
