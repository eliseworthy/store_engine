class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :name
      t.string :address
      t.string :email
      t.string :status, default: "pending"
      t.string :pay_type
      t.datetime :shipped_at
      t.datetime :cancelled_at
      t.timestamps
    end
  end
end
