class User < ApplicationRecord
  validates :username, length: { minimum: 5 }
  validates :password, length: { minimum: 5 }
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
