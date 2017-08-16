class Product < ApplicationRecord
has_many :product_image, dependent: :destroy
has_many :product_user
has_many :users, through: :product_user
has_many :orders
mount_uploader :image, ImageUploader

def rem
orders =  self.orders
sum = 0
orders.each do |order|
  sum += order.num
end
result = self.max_num.to_i - sum
end
end
