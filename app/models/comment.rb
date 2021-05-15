class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :content, length: { minimum: 10 }
end
