# created a product model with the following attributes: name, price, and quantity
class Product < ApplicationRecord
  validates :name, presence: true, length: { minimum: 0, maximum: 50 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0}
end
