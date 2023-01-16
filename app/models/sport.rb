class Sport < ApplicationRecord
  has_many :field_sports, dependent: :destroy
  has_many :player_sports, dependent: :destroy
  has_many :coach_sports, dependent: :destroy
end
