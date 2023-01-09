class User < ApplicationRecord
  #user має одну корзину  depended-дозволяє видалити user.cart з db
  has_one :cart, dependent: :destroy
  #user має багато orders 
  has_many :orders, dependent: :destroy
  has_many :comments
end 
