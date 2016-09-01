class AccentsController < ApplicationController

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

