class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @products = Product.all.order(:created_at)
  end

  def profiles
    @my_products = current_user.products.order(:created_at)
    # @purchased_products = current_user.orders.map{ |order| order.product }

    @purchased_products = Product.joins(:orders).where(orders: { user: current_user }).order(:created_at)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to profiles_products_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to profiles_products_path, status: :see_other
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :category, :description, photos: [])
  end
end
