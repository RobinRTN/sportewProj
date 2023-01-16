class Badge < ApplicationRecord
  has_many :player_badges, dependent: :destroy
end
