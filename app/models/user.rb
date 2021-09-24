class User < ApplicationRecord
  has_many :shows
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
