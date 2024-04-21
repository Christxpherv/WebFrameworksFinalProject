# created a category model with the following attributes: name, description, and status
class Category < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :status, inclusion: { in: [true, false] }
end
