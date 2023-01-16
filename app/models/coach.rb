class Coach < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :coach_sports, dependent: :destroy
  has_many :sports, through: :coach_sports
  has_many :bookings, dependent: :destroy
  has_many :club_coaches, dependent: :destroy
  has_many :clubs, through: :club_coaches
  has_many :player_coaches, dependent: :destroy
  has_many :players, through: :player_coaches
  has_many :conversations, dependent: :destroy
  has_one_attached :photo
end
