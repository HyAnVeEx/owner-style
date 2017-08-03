class Product < ApplicationRecord
has_many :product_image, dependent: :destroy
has_many :product_user
has_many :users, through: :product_user
has_many :orders
end
