class CategoriesController < ApplicationController

  def index
  	@categories = Category.all
  	@total = @categories.count
  end
end