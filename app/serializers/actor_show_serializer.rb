class ActorShowSerializer < ActiveModel::Serializer
  belongs_to :show
  belongs_to :actor

  attributes :id, :actor_id, :show_id
end
