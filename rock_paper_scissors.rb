# Rock, Paper, Scissors, Shoot!

CHOICES = {'P' => 'Paper', 'R' => 'Rock', 'S' => 'Scissors' }
puts "Let's play Rock, Paper, Scissors, SHOOT!"

loop do

  puts "Choose your weapon wisely user. What will it be? O_o"
  puts "P (Paper)"
  puts "R (Rock)"
  puts "S (Scissors)"
  
  #User inputs a choice. Must be valid choice to proceed.
  begin
    puts "Choose one: P/R/S"
    user_choice = gets.chomp.upcase
  end until CHOICES.keys.include?(user_choice)

  # Computer makes a choice
  computer_choice = CHOICES.keys.sample

  puts "Your input was #{CHOICES[user_choice]} and I went with #{CHOICES[computer_choice]}."
  sleep 1

# Possibl out
  if user_choice == computer_choice
    puts "Blast! We both chose the same thing. It's a draw."
  elsif user_choice == 'P' && computer_choice == 'R'
    puts "Paper covers Rock. You win!"
  elsif user_choice == 'S' && computer_choice =='P'
    puts "Your Scissors sliced through my Paper. You win!"
  elsif user_choice == 'R' && computer_choice =='S'
    puts "Your Rock crushed my feeble Scissors. You win!"
  elsif computer_choice == 'P' && user_choice == 'R'
    puts "Hahahahaha! Your Rock is no match for my Paper. YOU LOSE!"
  elsif computer_choice =='S' && user_choice =='P'
    puts "Snip snip! My Scissors cut straight through your paper. YOU LOSE!"
  else
    puts "*SMASH!* My Rock obliterates your Scissors."
  end

  puts "Would you like to play again? y/n"
  break if gets.chomp.downcase != 'y'

end

puts "Good bye!"




