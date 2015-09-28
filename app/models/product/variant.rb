class Product::Variant < ActiveRecord::Base
  validates :price, :product_id, presence: true
  belongs_to :product
end