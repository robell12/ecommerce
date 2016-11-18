class ShoppingCart < ApplicationRecord
  acts_as_shopping_cart_using :shoppingcart_item
end
