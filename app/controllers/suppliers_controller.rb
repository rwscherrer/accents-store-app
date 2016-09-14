class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  def new
  end

  def create
    @supplier = Supplier.create(name: params[:name], 
                                email: params[:email], 
                                phone: params[:phone])

    flash[:success] = "New Supplier Created"
    redirect_to "/suppliers/#{@supplier_id}"
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    supplier = Supplier.find(params[:id])
    supplier = supplier.update(name: params[:name],
                               email: params[:email], 
                                phone: params[:phone])
    flash[:success] = "Supplier Updated"
    redirect_to "/suppliers/#{@supplier_id}"
  end
end
