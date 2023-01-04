class Cart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :positions
  #cart може мати декілька items через positions
  has_many :items, through: :positions
  
  
  #has_and_belongs_to_many :items
end
