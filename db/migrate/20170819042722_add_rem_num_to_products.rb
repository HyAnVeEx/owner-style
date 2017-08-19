class AddRemNumToProducts < ActiveRecord::Migration[5.0]
  def change
      add_column :products, :rem_num, :int
  end
end
