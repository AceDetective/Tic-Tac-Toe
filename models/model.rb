class Board
  @@board={
    :top_left => "1",
    :top_mid => "2",
    :top_right => "3", 
    :mid_left => "4", 
    :mid_mid => "5", 
    :mid_right =>"6",
    :bottom_left =>"7",
    :bottom_mid => "8",
    :bottom_right => "9"
    }
  
  def initialize
    @board=@@board
  end
  def board
    @board
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
# player_move(cboard)

def thewinner(board)
  #The winners of the board 
  puts board
  if board[:top_left] == board[:top_mid] && board[:top_right] == board[:top_left]
    return true
  elsif board[:mid_left] == board[:mid_mid] && board[:mid_right] == board[:mid_left]
    return true
  elsif board[:mid_left] == board[:bottom_mid] && board[:bottom_right] == board[:bottom_left]
    return true
  elsif board[:top_left] == board[:mid_left] && board[:bottom_left] == board[:top_left]
    return true
  elsif board[:top_mid] == board[:mid_mid] && board[:bottom_mid] == board[:top_left]
    return true
  elsif board[:top_right] == board[:mid_right] && board[:bottom_right] == board[:top_right]
    return true 
  elsif board[:top_left] == board[:mid_mid] && board[:bottom_right] == board[:top_left]
    return true 
  elsif board[:top_right] == board[:mid_mid] && board[:bottom_left] == board[:top_right]
    return true 
  else #no one won yet
    return false 
  end
end

until thewinner(cboard.board) do
  player_move(cboard)
end