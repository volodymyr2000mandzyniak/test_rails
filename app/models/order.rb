class Order < ApplicationRecord
  #order має тільки user 
  belong_to :user
end
