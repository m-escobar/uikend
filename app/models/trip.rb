class Trip < ApplicationRecord
  after_validation :geocode, if: :will_save_change_to_place?
  mount_uploader :photo, PhotoUploader
  geocoded_by :place

  belongs_to :user
  has_many :bookings

  validates :capacity, numericality: { greater_than_or_equal_to: 1 }
  validates :price, numericality: { greater_than_or_equal_to: 1 }
  validate :date_cannot_be_in_the_past, :date_cannot_be_before_end

  def date_cannot_be_in_the_past
    if trip_start.present? && trip_start < Date.today
      errors.add(:trip_start, "não pode estar no passado")
    end
  end

  def date_cannot_be_before_end
    if trip_start.present? && trip_start > trip_end
      errors.add(:trip_end, "não pode ser antes do começo")
    end
  end
end
