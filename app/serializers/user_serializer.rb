class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :icon
  has_many :answers
end
