class Profile < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user

  # validates :cpf, numericality: { greater_than_or_equal_to: 1 }
  # validates :phone, numericality: { greater_than_or_equal_to: 1 }
end
