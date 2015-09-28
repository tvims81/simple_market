class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  def create
    @product = Product.new(product_params)

    if @product.save
      render :show, status: :created
    else
      render_ue_error(@product)
    end
  end

  def show
  end

  def index
    @products = Product.all
    @total = @products.count
  end

  def update
    if @product.update(product_params) && !product_params[:category_id]
      render :show
    else
      render_ue_error(@product)
    end
  end

  def destroy
    @product.destroy
    render nothing: true
  end

  private

  def set_product
    @product = Product.find_by_id(params[:id]) || raise(ResourceNotFoundError.new)
  end

  def product_params
    params.permit(:name, :description, :category_id)
  end

end
