class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # helper_method helps us to access to a controller method from within a view
  helper_method :cart

# the cart method should utilize the Rails session method and return an array of the items stored in the cart   
  def cart
    session[:cart] ||= [ ]
  end
end
