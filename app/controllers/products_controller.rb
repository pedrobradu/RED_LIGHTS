class ProductsController < ApplicationController
  before_action :set_product, only: %i[show]

  def show
    @product = Product.new
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
