class Board
  @@board={
    :top_left => " ",
    :top_mid => " ",
    :top_right => " ", 
    :mid_left => " ", 
    :mid_mid => " ", 
    :mid_right =>" ",
    :bottom_left =>" ",
    :bottom_mid => " ",
    :bottom_right => " "
    }
  
  def initialize
    @board=@@board
  end
  
  def move(player,place)
    puts @board
    @board[place]=player
    puts @board
  end
end



def player_move(board)
  puts "what player are you?"
  player = gets.chomp
  puts "where do you want to place the #{player}"
  place= gets.chomp
  board.move(player, place.to_sym)
end

cboard=Board.new
player_move(cboard)

until print.rb
player_move(cboard)