class ShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :description, :creator, :seasons, :network, :favorite, :user_id, :image
end
