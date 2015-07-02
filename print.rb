def print_board(board)
  #this is the board for tic-tac-toe
  puts board[0] + " | " + board[1] + " | " + board[2]
  puts "_________"
  puts board[3] + " | " + board[4] + " | " + board[5]
  puts "_________"
  puts board[6] + " | " + board[7] + " | " + board[8]
end

board = ["x", "x", "x", "o", "x", "o", "x", "o", "x"]
print_board(board)

def thewinner(board)
  #The winners of the board 
  if board[0] == board[1] && board[2] == board[0]
    return true
  elsif board[3] == board[4] && board[5] == board[3]
    return true
  elsif board[6] == board[7] && board[8] == board[6]
    return true
  elsif board[0] == board[3] && board[6] == board[0]
    return true
  elsif board[1] == board[4] && board[7] == board[1]
    return true
  elsif board[2] == board[5] && board[8] == board[2]
    return true 
  elsif board[0] == board[4] && board[8] == board[0]
    return true 
  elsif board[2] == board[4] && board[6] == board[2]
    return true 
  else #no one won yet
    return false 
  end
end