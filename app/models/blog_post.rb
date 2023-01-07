class BlogPost < ApplicationRecord
  has_many :comments, at: :commentable
end
