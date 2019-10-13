class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :hair_stylist, :hairstyle, :date_time
  #has_many :reviews,  through: :hair_stylist
  has_many :hair_stylists

end
