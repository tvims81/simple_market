class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category_name
      t.string :description

      t.timestamps
    end
  end
end
