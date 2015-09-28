class Product::Variant < ActiveRecord::Base
  validates :price, presence: true
  belongs_to :product
end