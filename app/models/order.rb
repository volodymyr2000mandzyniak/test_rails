class Order < ApplicationRecord
  #order має тільки user 
  belongs_to :user
end
