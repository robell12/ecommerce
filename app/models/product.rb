class Product < ApplicationRecord
  validates :name, :price, :quantity, presence: true
  belongs_to :user
end
