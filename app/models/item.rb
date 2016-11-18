class Item < ApplicationRecord
  acts_as_shopping_cart_item_for :shoppingcart
end
