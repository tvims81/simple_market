class Products::VariantsController < Products::ApplicationController

  def create
    @variant = Product::Variant.new(variant_params)
    @variant.product = product
    
    if @variant.save
      render :show, status: :created
    else
      render_ue_error(@variant)
    end
  end

  def show
  	@variant = Product::Variant.find_by_id(params[:id]) || render_not_found_error

  end

  def index  	
  	@variants = product.variants
  	@total = @variants.count
  end










  private

  	def variant_params
    	params.permit(:price, :properties)
  	end
  

end