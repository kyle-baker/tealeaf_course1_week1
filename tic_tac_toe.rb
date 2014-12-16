require 'pry'

# 1. Come up with requirements/specifications, which will determine the scope.
# 2. Application logic; sequence of steps
# 3. Translation of those steps into code
# 4. Run code to verify logic

=begin 
**Application Logic**

draw a board
assign player to "X"
assign computer to "O"

loop until victory condition is met or all squares are taken
  player picks a square
  check for winner
  computer picks an empty square
  check for winner

If check for a winner = true
  Show the winner
or else
  It's a tie
=end

# Defining Methods
loop do

  def initialize_board
    board = {}
    (1..9).each {|position| board[position] = ' '}
    board
  end

  def empty_positions(board)
    board.keys.select {|position| board[position] == ' '}
  end

  def player_picks_square(board)
    begin
      puts "Pick a square (1-9):"
      position = gets.chomp.to_i
    end until empty_positions(board).include?(position)
    board[position] = "X"
  end

  def computer_picks_square(board)
    position = empty_positions(board).sample
    board[position] = "O"
  end

  def check_winner(board)
    winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
    winning_lines.each do |line|
      return "Player" if board.values_at(*line).count('X') == 3
      return "Computer" if board.values_at(*line).count('O') == 3
    end
    nil
  end

  def all_positions_filled?(board)
    empty_positions(board) == []
  end

  def announce_winner(winner)
    puts "#{winner} won!"
  end

  def draw_board(board)
    system "clear"
    puts " "
    puts "    #{board[1]} | #{board[2]} | #{board[3]} "
    puts "    ---------"
    puts "    #{board[4]} | #{board[5]} | #{board[6]} "
    puts "    ---------"
    puts "    #{board[7]} | #{board[8]} | #{board[9]}"
    puts " "
  end

  # Main Program 
  board = initialize_board
  draw_board(board)
    
  begin
    player_picks_square(board)
    draw_board(board)
    computer_picks_square(board)
    draw_board(board)
    winner = check_winner(board)

  end until winner || all_positions_filled?(board)

  if winner
    announce_winner(winner)
  else
    puts "It's a tie"
  end

  puts "=> Would you like to play again? (y/n)"
  play_again = gets.chomp.downcase

  if play_again == 'y'
    next
  else
    break
  end
end 

puts "Goodbye!"

