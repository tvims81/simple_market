namespace :product do
  desc 'update_category if not exists'
  task update_category: :environment do
    categories = []
    Category.all.each do |category|
      categories << category.id
    end
    Product.all.each do |product|
      if !(categories.include? product.category_id)
        product.update(category_id: categories.shuffle.first)
      end
    end
    def product
    end


  end
end

