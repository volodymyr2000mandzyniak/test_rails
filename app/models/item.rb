class Item < ApplicationRecord
  validates :price, numericality: {greater_than: 0}
  validates :name, presence: true
  
  has_many :comments, as: :commentable
  has_many :positions
  has_many :carts, through: :positions
  has_one :image, as: :imageable
  #has_and_belongs_to_many  :carts
end
 