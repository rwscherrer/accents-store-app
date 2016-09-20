class CartedProductsController < ApplicationController

  def index
    @user_id = current_user.id
    

    @carted_products = CartedProduct.where(status: "Carted").where(user_id: current_user.id)
 
  end

  def create
    accent = Accent.find(params[:accent_id])

    @carted_product = CartedProduct.new(user_id: current_user.id, accent_id: params[:accent_id], quantity: params[:quantity], status: "Carted")

    @carted_product.save

    flash[:success] = "Items Added To Cart"
    redirect_to "/carted_products"
  end

end