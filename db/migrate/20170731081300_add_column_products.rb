class AddColumnProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :Products, :title, :text
    add_column :Products, :area, :text
    add_column :Products, :price, :int
    add_column :Products, :deadline, :date
    add_column :Products, :image, :string
  end
end
