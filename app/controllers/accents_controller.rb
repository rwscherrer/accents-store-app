class AccentsController < ApplicationController

  def all_accents
    @all_accents = Accent.all

  end

  def one_accent
    @one_accent = Accent.last
    
  end

end
