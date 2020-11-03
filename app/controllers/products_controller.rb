class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    product = params[:product]
    @product = Product.new(name: product[:name], price: product[:price].to_i)
    @product.save
    redirect_to products_path
  end

  def destroy
    id = params[:id]
    Product.find(id).destroy
    redirect_to products_path
  end
  def show
  end
end
