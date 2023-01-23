class User < ApplicationRecord
  has_many :likes
  has_many :songs, through: :likes
end
