class User < ApplicationRecord
  #user має одну корзину  depended-дозволяє видалити user.cart з db
  has_one name :cart, dependent: :destroy
  #user має багато orders 
  has_many :orders,   depended: :destroy
end 
