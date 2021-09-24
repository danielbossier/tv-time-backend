class ActorSerializer < ActiveModel::Serializer
  has_many :actor_shows
  has_many :shows, through: :actor_shows

  attributes :id, :name, :age, :gender, :hometown
end
