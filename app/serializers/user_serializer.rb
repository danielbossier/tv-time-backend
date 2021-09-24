class UserSerializer < ActiveModel::Serializer
  has_many :shows

  attributes :id, :name, :email
end
