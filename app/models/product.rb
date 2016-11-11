class Product < ApplicationRecord
  belongs_to :categories
  validates :name, :price, :quantity, presence: true
end
