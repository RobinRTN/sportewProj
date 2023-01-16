class Field < ApplicationRecord
  has_many :field_sports, dependent: :destroy
  has_many :field_types, dependent: :destroy
  belongs_to :club
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
end
