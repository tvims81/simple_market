require 'test_helper'
class Products::VariantsControllerTest < ActionController::TestCase
  setup do
    @product = Product.create!(name: 'Товар', description: 'Описание', category_name: 'Категория')
  end

  test 'should create' do
  	post :create, { price: '10', properties: {'Цвет' => "красный"}, product_id: @product.id }
  	assert_response :created
  	assert_not_nil assigns(:variant)[:properties]['Цвет']
  end

  test 'should show' do
  	@variant = Product::Variant.create!(price: '10', properties: {'Цвет' => 'красный'}, product_id: @product.id)
  	get :show, { product_id: @product.id, id: @variant.id }
  	assert_response :success

  	get :show, { product_id: @product.id, id: @variant.id + 1 }
    assert_response :not_found
  end

  test 'should index' do
  	5.times do |price|
  		Product::Variant.create!(price: price, properties: { 'options' => '123123' }, product_id: @product.id)
  	end

  	get :index, { product_id: @product.id }
    assert_response :success
  end




end
