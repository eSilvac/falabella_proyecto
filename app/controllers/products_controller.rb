class ProductsController < ApplicationController
  def index
    @products = Product.order('value ASC')
  end

  def new
    @product = Product.new()
  end

  def create
    @product = Product.create(product_params)
    @products = Product.order('value ASC')
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    @products = Product.order('value ASC')
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end

  private
    def product_params
      params.require(:product).permit(:value)
    end
end
