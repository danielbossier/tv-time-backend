class ShowSerializer < ActiveModel::Serializer
  has_many :show_genres
  has_many :genres, through: :show_genres
  belongs_to :user
  has_many :actor_shows
  has_many :actors, through: :actor_shows
  
  attributes :id, :title, :year, :description, :creator, :seasons, :network, :favorite, :user_id, :image
end
