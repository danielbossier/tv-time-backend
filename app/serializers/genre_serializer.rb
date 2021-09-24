class GenreSerializer < ActiveModel::Serializer
  has_many :show_genres
  has_many :shows, through: :show_genres

  attributes :id, :genre
end
