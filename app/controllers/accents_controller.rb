class AccentsController < ApplicationController

  def index
    @all_accents = Accent.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount_level = params[:discount]
    search_term = params[:search_term]

    if search_term
      fuzzy_search_term = "%#{search_term}%"
      @all_accents = @all_accents.where("name ILIKE ? OR description ILIKE ?", fuzzy_search_term, fuzzy_search_term)
    end



    if discount_level
      @all_accents = @all_accents.where("price < ?", discount_level)
    end

    if sort_attribute && sort_order
      @all_accents = @all_accents.order(sort_attribute => sort_order)
    elsif sort_attribute 
      @all_accents = @all_accents.order(sort_attribute)
    end
  end

  def show
    @accent = Accent.find(params[:id])
    @supplier = @accent.supplier.name
    @categories = @accent.categories
  end

  def new
  end

  def create
    @accent = Accent.create(name: params[:name],
                            price: params[:price],
                            description: params[:description], 
                            supplier_id: params[:supplier][:supplier_id])

    Image.create(url: params[:image], product_id: @accent.id) if params[:image]
    Image.create(url: params[:image_2], product_id: @accent.id) if params[:image_2]

    flash[:success] = "New Accent Created"
    redirect_to "/accents/#{@accent_id}"
  end

  def edit 
    @accent = Accent.find(params[:id])
  end

  def update
    accent = Accent.find(params[:id])
    accent = accent.update(name: params[:name], 
                           price: params[:price], 
                           image: params[:image], 
                           description: params[:description])

    flash[:success] = "Accent Updated"
    redirect_to "/#{@accent_id}"
  end
    


  def all_accents
    @all_accents = Accent.all

  end

  def one_accent
    @one_accent = Accent.last
    
  end

  def get_form
  
  end

  def send_form
    @email = params[:email]
    redirect_to '/'
  end

  def destroy
    @accent = Accent.find(params[:id])
    @accent.destroy

    flash[:warning] = "And... It's Gone."
    redirect_to '/'
  end

  def random
    random_accent = Accent.all.sample

    redirect_to "/accents/#{random_accent.id}"
  end

end

