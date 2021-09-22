class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 4, maximum: 16 }
  validates :password, presence: true, length: { minimum: 4, maximum: 256 }
end
