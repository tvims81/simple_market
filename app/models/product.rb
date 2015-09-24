class Product < ActiveRecord::Base
  validates :name, :description, :category_name, presence: true
  has_many :variants
end