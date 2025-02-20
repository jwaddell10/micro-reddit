class Comment < ApplicationRecord
  validates :text, length: { minimum: 2, maximum: 100 }
  belongs_to :user
  belongs_to :post
end
