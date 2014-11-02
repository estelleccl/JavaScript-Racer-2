class Player < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :games, through: :game_players
  has_many :game_players
end