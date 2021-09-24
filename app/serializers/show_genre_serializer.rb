class ShowGenreSerializer < ActiveModel::Serializer
  belongs_to :show
  belongs_to :genre
  
  attributes :id, :show_id, :genre_id
end
