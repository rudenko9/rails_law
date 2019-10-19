class HairStylistSerializer < ActiveModel::Serializer
  attributes :id, :name
  # has_many :appointments
  #belongs_to :appointment
end
