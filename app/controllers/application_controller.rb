class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :find_categories_list
  before_action :calculate_cart_count

  def current_user
  # the long way...
  #   if session[:user_id]
  #     unless @current_user
  #       @current_user = User.find(session[:user_id])
  #     end
  #     @current_user
  #   end
  # end
  # the short way
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

private

  def authenticate_admin!
    redidrect_to '/login' unless current_user && current_user.admin

  end

  def authenticate_user!
    redidrect_to '/login' unless current_user
  end

  def find_categories_list
    @categories_list = Category.all
  end

  def calculate_cart_count
    if current_user
      @cart_count = current_user.currently_carted.count
    else
      @cart_count = 0
    end
  end

end
