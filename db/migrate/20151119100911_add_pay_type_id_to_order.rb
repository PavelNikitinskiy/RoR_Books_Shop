class AddPayTypeIdToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :pay_type, index: true, foreign_key: true
  end
end
