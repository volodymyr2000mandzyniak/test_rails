class Cart < ApplicationRecord
  #кoрзина належить user
  belong_to :user
end
