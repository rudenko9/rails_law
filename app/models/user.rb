class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
has_many :appointments
has_many :reviews
has_many :hair_stylists, through: :appointments
accepts_nested_attributes_for :appointments
accepts_nested_attributes_for :reviews

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  devise  :omniauthable, omniauth_providers: [:github]

  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        #user.provider = auth.provider
        #user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end

  def has_appointments
    !appointments.empty?
  end

  def has_reviews
    !reviews.empty?
  end

end
