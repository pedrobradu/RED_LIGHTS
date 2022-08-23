class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @products = Product.all.order(:created_at)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, status: :see_other
  end

  def show
    @product = Product.find(params[:id])
  end


  private

  def product_params
    params.require(:product).permit(:name, :price, :category, :description)
  end




  # def product_params
  #   params.require(:product).permit(:name, :image_url)
  # end
end
