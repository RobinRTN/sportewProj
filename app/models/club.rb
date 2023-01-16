class Club < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :club_players, dependent: :destroy
  has_many :players, through: :club_players
  has_many :club_coaches, dependent: :destroy
  has_many :coaches, through: :club_coaches
  has_many :club_features, dependent: :destroy
  has_many :features, through: :club_features
  has_many :fields, dependent: :destroy
  has_many :bookings, through: :fields
  has_many :reviews, through: :bookings
  has_one_attached :photo
end
