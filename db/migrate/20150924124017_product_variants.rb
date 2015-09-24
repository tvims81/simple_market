class ProductVariants < ActiveRecord::Migration
  def change
    create_table :product_variants do |t|
      t.decimal :price
      t.json :properties
      t.integer :product_id

      t.timestamps
    end
  end
end
