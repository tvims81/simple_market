class Products::VariantsController < Products::ApplicationController
	before_action :set_variant, only: [:show, :update]

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
  end

  def index  	
  	@variants = product.variants
  	@total = @variants.count
  end

  def update
  	if @variant.update(variant_params)
  		render :show
  	else
  		render_ue_error(@variant)
  	end
  end











  private

  	def variant_params
    	{ price: params[:price], properties: params[:properties] }
    	#params.permit(:price, properties: params[:properties])
  	end

  	def set_variant
  		@variant = Product::Variant.find_by_id(params[:id]) || render_not_found_error
  	end
  

end