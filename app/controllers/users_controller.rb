class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def home
    @current_grocery_list = current_user.grocery_lists.newest_first.first
    @inventory = current_user.inventory
    @old_grocery_lists = current_user.grocery_lists.newest_first[1..-1]
  end
end
