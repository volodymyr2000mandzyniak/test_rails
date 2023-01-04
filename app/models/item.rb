class Item < ApplicationRecord
  validates :price, numericality: {greater_than: 0}
  validates :name, presence: true
  
  has_many :positions
  #item може мати декілька carts через positions
  has_many :carts, through: :positions
  #has_and_belongs_to_many  :carts
end
 