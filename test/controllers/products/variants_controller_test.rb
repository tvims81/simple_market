require 'test_helper'
class Products::VariantsControllerTest < ActionController::TestCase
  setup do
    @product = Product.create!(name: 'Товар', description: 'Описание', category_name: 'Категория')
  end

  test 'should create' do

  end

end

