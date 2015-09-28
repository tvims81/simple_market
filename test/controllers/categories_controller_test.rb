require 'test_helper'
class CategoriesControllerTest < ActionController::TestCase

  setup do
  end

  test 'should index' do
  	5.times do |step|
  		Category.create!(name: "Category#{step}")
  	end
  	get :index
  	assert_response :success
  end
end