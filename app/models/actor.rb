class Actor < ApplicationRecord
  has_many :actor_shows
  has_many :shows, through: :actor_shows

  validates :age, numericality: { only_integer: true }
end
