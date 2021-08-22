class UserSerializer < ActiveModel::Serializer
  attributes :id, :User, :username, :password_digest
end
