class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :trips
  has_many :bookings
  has_one :profile
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
