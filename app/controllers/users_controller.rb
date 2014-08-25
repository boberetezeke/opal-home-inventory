class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def home
    @current_grocery_list = current_user.grocery_lists.last
    @inventory = current_user.inventory
  end
end
