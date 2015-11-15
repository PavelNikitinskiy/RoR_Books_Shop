class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.text :addres
      t.string :email
      t.string :pay_time

      t.timestamps null: false
    end
  end
end
