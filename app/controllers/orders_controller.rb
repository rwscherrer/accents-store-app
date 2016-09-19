class OrdersController < ApplicationController

  def create
    accent = Accent.find(params[:accent_id])

    @order = Order.new(user_id: current_user.id,
                       quantity: params[:quantity],
                       accent_id: params[:accent_id])
                      

    @order.calculate_subtotal(accent)
    @order.calculate_tax
    @order.calculate_total
    @order.save
                        

    flash[:success] = "New Order Created"
    redirect_to "/orders/#{@order.id}"
  end

  def show
    @order = Order.find(params[:id])
    @accent = @order.accent
  end

end
