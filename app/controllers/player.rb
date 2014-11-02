post '/players/new' do
	
	@player1 = Player.find_by( name: params[:player_1].camelize )
	
	if @player1.nil? 
	  @player1 = Player.create( name: params[:player_1].camelize )
	end
	
	@player2 = Player.find_by( name: params[:player_2].camelize )
	
	if @player2.nil? 
	  @player2 = Player.create( name: params[:player_2].camelize )
	end

	current_game = Game.create

	session[:game_id] = current_game.id

	current_game.players <<  @player1
	current_game.players <<  @player2
	
	erb :race_track

end