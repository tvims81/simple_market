require 'test_helper'
class ProductsControllerTest < ActionController::TestCase

  setup do
  end

  test 'should create with validation failures' do
    post :create, { name: 'Товар', description: 'Описание' }
    assert_response :unprocessable_entity
  end

  test 'should create and show' do
    post :create, { name: 'Товар', description: 'Описание', category_name: 'Категория' }
    assert_response :created
  end

  test 'should show' do
    @product = Product.create!(name: 'Товар', description: 'Описание', category_name: 'Категория')
    get :show, { id: @product.id }
    assert_response :success

    get :show, { id: @product.id + 1 }
    assert_response :not_found
  end

  test 'should index' do
    5.times do
      Product.create!(name: 'Товар', description: 'Описание', category_name: 'Категория')
    end

    get :index
    assert_response :success
  end

  test 'should update' do
    @product = Product.create!(name: 'Товар', description: 'Описание', category_name: 'Категория')
    put :update, { id: @product.id, name: 'Товар1' }
    assert_response :success
    @product.reload
    assert_equal @product.name, 'Товар1'
  end

  test 'should destroy' do
    @product = Product.create!(name: 'Товар', description: 'Описание', category_name: 'Категория')
    delete :destroy, { id: @product.id }
    assert_response :success
    assert_nil Product.find_by_id @product.id
  end

end