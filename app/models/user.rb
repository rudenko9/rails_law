class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
has_many :appointments
has_many :hair_stylists, through: :appointments
accepts_nested_attributes_for :appointments 


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
