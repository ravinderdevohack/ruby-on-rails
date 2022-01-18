class NovelSerializer < ActiveModel::Serializer
  attributes :id, :title :writer
  belongs_to :writer
  # def writer
  #   {writer_id: self.object.writer.id}
  # end
end
