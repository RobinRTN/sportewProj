class PlayerCoach < ApplicationRecord
  belongs_to :player
  belongs_to :coach
end
