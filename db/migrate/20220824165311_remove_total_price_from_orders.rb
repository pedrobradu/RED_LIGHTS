class RemoveTotalPriceFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :total_price, :decimal
  end
end
