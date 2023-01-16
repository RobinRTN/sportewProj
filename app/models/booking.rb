class Booking < ApplicationRecord
  belongs_to :player
  belongs_to :coach
  belongs_to :field
  has_one :review, dependent: :destroy
end
