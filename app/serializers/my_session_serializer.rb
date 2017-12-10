class MySessionSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :token
end