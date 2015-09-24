class Products::ApplicationController < ApplicationController

  def product
    @product ||= Product.find_by_id(params[:product_id]) || render_not_found_error
  end

end