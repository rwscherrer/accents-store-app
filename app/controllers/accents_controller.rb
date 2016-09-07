class AccentsController < ApplicationController

  def index
    @all_accents = Accent.all

  end

  def show
    @accent = Accent.find(params[:id])
  end

  def new

  end



  def create
    @accent = Accent.create(name: params[:name],
                            price: params[:price],
                            image: params[:image],
                            description: params[:description])
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

end

