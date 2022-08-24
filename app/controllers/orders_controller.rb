class OrdersController < ApplicationController
    
    def new
        @product = Product.find(params[:product_id])
        @order = Order.new
    end

    def create
        # @user = User.find(:id)
        @product = Product.find(params[:product_id])
        @order = Order.new(order_params)
        @order.user = current_user
        @order.product = @product
        if @order.save
            redirect_to order_path(@order)
        else
            render :new, status: :unprocessable_entity
        end
    end
    
    def show
        @order = Order.find(params[:id])
    end 

    private
    
    def order_params
        params.require(:order).permit(:quantity, :total_price)
    end
end
