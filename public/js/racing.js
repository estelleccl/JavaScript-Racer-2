function update_player_position(player, counter){
  $(player + counter).removeClass('active');
    counter = counter + 1;
 
  $(player + counter).addClass('active');
  return counter;
}