class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_cart

  def cart
    session[:cart] ||= []
  end

  class Item
    def add_to_cart
      @item = Item.find(params[:id])

      current_cart = @item.id
  end
end

end
