class Products::ApplicationController < ApplicationController

  def product
    @product ||= Product.find_by_id(params[:product_id]) || raise(ResourceNotFoundError.new)
  end

end