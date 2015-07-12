puts "\n\nPlay Paper Rock Scissors!\n\n"

loop do
  puts "Choose one: ('P'/'R'/'S')"
  player_choice = gets.chomp.downcase

  choices = %w('p', 'r', 's')
  computer_choice = choices.sample
  
  paper_msg = "Paper wraps Rock!"
  scissors_msg = "Scissor cuts Paper!"
  rock_msg = "Rock smashes Scissors!"

  if player_choice == "p"
    if computer_choice == "r"
      puts "You picked Paper and computer picked Rock.\n#{paper_msg}\nYou won!"
    elsif computer_choice == "s"
      puts "You picked Paper and computer picked Scissor.\n#{scissors_msg}\nComputer won!"
    else 
      puts "You picked Paper and computer picked Paper.\nPaper equals Paper!\nIt's a tie!"
    end
  end

  if player_choice == "r"
    if computer_choice == "s"
      puts "You picked Rock and computer picked Scissors.\n#{rock_msg}\nYou won!"
    elsif computer_choice == "p"
      puts "You picked Rock and computer picked Paper.\n#{paper_msg}\nComputer won!"
    else 
      puts "You picked Rock and computer picked Rock.\nRock equals Rock!\nIt's a tie!"
    end
  end

  if player_choice == "s"
    if computer_choice == "p"
      puts "You picked Scissors and computer picked Paper.\n#{scissors_msg}\nYou won!"
    elsif computer_choice == "r"
      puts "You picked Scissors and computer picked Rock.\n#{rock_msg}\nComputer won!"
    else 
      puts "You picked Scissors and computer picked Scissors.\nScissors equals Scissors!\nIt's a tie!"
    end
  end

  puts "\n\nPlay again?(Y/N)\n\n"
  answer = gets.chomp.downcase

  break if answer != 'y'
end
