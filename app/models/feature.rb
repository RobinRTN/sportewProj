class Feature < ApplicationRecord
  has_many :club_features, dependent: :destroy
end
