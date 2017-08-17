class AddImagemToProductContents < ActiveRecord::Migration[5.0]
  def change
    add_column :product_contents, :image, :string
    add_column :product_contents, :title, :text
    add_column :product_contents, :content, :text
  end
end
