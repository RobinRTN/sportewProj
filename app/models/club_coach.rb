class ClubCoach < ApplicationRecord
  belongs_to :club
  belongs_to :coach
end
