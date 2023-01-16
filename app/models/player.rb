class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :player_badges, dependent: :destroy
  has_many :badges, through: :player_badges
  has_many :player_sports, dependent: :destroy
  has_many :sports, through: :player_sports
  has_many :player_coaches, dependent: :destroy
  has_many :coaches, through: :player_coaches
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :club_players, dependent: :destroy
  has_many :clubs, through: :club_players
  has_many :conversations, dependent: :destroy
  has_one_attached :photo

end
