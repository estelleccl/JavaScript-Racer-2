class GamePlayer < ActiveRecord::Base
  validates_uniqueness_of :player_id, scope: :game_id, message: "you cannot play against yourself"
  belongs_to :player
  belongs_to :game
  # validate :only_2_players_at_a_time( :game id )
end

# def only_2_players_at_a_time
# 		if .count > 2
# 			You should use a custom ActiveRecord validation to ensure that every game has exactly two players. 
# 		end
# end
# 	game_count = Game.find(:game_id).count 
# 	game_id = GamePlayer.find_all_by_game_id(:game_id)
# 
# end

# def there_can_only_be_two_players
  #   game_id_count = Gameplayer.find_all_by_game_id(:game_id)
  #   if game_id_count.length > 2
  #     c
  #   end
  # end