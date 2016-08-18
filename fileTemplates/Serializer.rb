#parse("Ruby File Header.rb")

class ${Serializer_name} < ActiveModel::Serializer
  attributes :id
  def id
    object.id
  end
end