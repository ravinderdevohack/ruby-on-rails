class WriterSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :novels
end

