class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 1, maximum: 10_000 }

  belongs_to :user
  has_many :comments
end
