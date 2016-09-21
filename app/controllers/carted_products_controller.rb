class CartedProductsController < ApplicationController

  before_action :authenticate_user!

  def index

    if current_user.currently_carted.any?
      @carted_products = current_user.currently_carted
    else
      flash[:warning] = "Please add items to cart."
      redirect_to '/'
    end
    
  end

  def create
    @carted_product = CartedProduct.create(accent_id: params[:accent_id],
                                           user_id: current_user.id, 
                                           quantity: params[:quantity], 
                                           status: "carted")

    flash[:success] = "Items Added To Cart"
    redirect_to '/carted_products'
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: "removed")

    flash[:success] = "Product removed from cart"
    redirect_to '/carted_products'
  end
end