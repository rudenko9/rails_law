class HairStylistSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :appointments
end
