class UpdateProductCategory < ActiveRecord::Migration
  def change
  	remove_column :products, :category_name
  	add_column :products, :category_id, :integer
  end
end
