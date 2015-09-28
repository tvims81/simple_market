class Product < ActiveRecord::Base
  validates :name, :description, :category_id, presence: true
  has_many :variants
  belongs_to :category
end