class AccentsController < ApplicationController

  def index
    @all_accents = Accent.all

  end

  def show
    @accent = Accent.find(params[:id])
  end

  def new

  end

  def new1

  end


  def create
    @accent = Accent.create(name: params[:name],
                            price: params[:price],
                            image: params[:image],
                            description: params[:description])
    render 'show.html.erb'

  end

  def edit 
    @accent = Accent.find(params[:id])
  end

  def update
    @accent = Accent.find(params[:id])
    @accent = Accent.update(name: params[:name], 
                              price: params[:price], 
                              image: params[:image], 
                              description: params[:description])
    render 'show.html.erb'
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
  end

end

