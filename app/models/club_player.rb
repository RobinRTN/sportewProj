class ClubPlayer < ApplicationRecord
  belongs_to :club
  belongs_to :player
end
