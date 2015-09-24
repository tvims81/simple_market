class Products::VariantsController < Products::ApplicationController

  def create
    @variant = Product::Variant.new(params)
    @variant.product = product
  end
  

end