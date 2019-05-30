class Trip < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  geocoded_by :place
  after_validation :geocode, if: :will_save_change_to_place?
  belongs_to :user
  has_many :bookings
end
