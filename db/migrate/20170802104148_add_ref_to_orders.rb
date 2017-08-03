class AddRefToOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :product, foreign_key: true
    add_reference :orders, :user, foreign_key: true
    add_column :orders, :num, :int
  end
end
