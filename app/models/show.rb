class Show < ApplicationRecord
  has_many :show_genres
  has_many :genres, through: :show_genres
  belongs_to :users
  has_many :actor_shows
  has_many :actors, through: :actor_shows
end
