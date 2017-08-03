class AddColumnProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :title, :text
    add_column :products, :area, :text
    add_column :products, :price, :int
    add_column :products, :deadline, :date
    add_column :products, :image, :string
  end
end
