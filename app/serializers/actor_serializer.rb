class ActorSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender, :hometown
end
