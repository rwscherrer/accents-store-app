class CartedProductsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    if current_user && current_user.currently_carted.any?
      @carted_products = current_user.currently_carted
    else
      flash[:warning] = "Please add items to cart."
      redirect_to '/'
    end
  end

  def create
    CartedProduct.create(accent_id: params[:accent_id],
                         quantity: params[:quantity],
                         user_id: current_user.id,
                         status: "carted")

    session[:cart_count] = nil
    flash[:success] = "Item added to Cart"
    redirect_to '/carted_products'
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: "removed")

    session[:cart_count] = nil
    flash[:success] = "Product Removed From Cart"
    redirect_to "/carted_products"
  end
end