class AddmaxNumToProducts < ActiveRecord::Migration[5.0]
  def change
      add_column :products, :max_num, :int
  end
end
