class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :grocery_lists
  has_one  :inventory
  has_many :items

  after_create :create_grocery_list_and_inventory

  def create_grocery_list_and_inventory
    grocery_lists << GroceryList.new
    inventory = Inventory.create
  end 
end
