# created a category model with the following attributes: name, description, and status
class Category < ApplicationRecord
  validates :name, presence: true, length: { minimum: 0, maximum: 50 }
  validates :description, presence: true
  validates :status, inclusion: { in: [true, false] }
end
