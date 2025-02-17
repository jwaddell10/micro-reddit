class Post < ApplicationRecord
  validates :title, length: { minimum: 2, maximum: 20 }
  validates :text, length: { minimum: 5, maximum: 100 }
  belongs_to :user
  has_many :comments, dependent: :destroy
end
