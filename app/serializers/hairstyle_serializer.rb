class HairstyleSerializer < ActiveModel::Serializer
  attributes :id, :haircut, :coloring, :haircut_and_coloring
end
