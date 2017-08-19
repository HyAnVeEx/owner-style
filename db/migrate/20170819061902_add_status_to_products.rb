class AddStatusToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :status, :text
  end
end
