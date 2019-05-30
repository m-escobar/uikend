class Trip < ApplicationRecord
  after_validation :geocode, if: :will_save_change_to_place?
  mount_uploader :photo, PhotoUploader
  geocoded_by :place
  
  belongs_to :user
  has_many :bookings

  validates :capacity, numericality: { greater_than_or_equal_to: 1 }
  validates :price, numericality: { greater_than_or_equal_to: 1 }

end
