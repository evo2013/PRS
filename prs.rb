puts "\n\nPlay Paper Rock Scissors!\n\n"

loop do
  puts "Choose one: ('P'/'R'/'S')"
  player_choice = gets.chomp.downcase

  choice = ['p', 'r', 's']
  computer_choice = choice.sample

  if player_choice == "p"
    if computer_choice == "r"
      puts "You picked Paper and computer picked Rock.\nPaper wraps Rock!\nYou won!"
    elsif computer_choice == "s"
      puts "You picked Paper and computer picked Scissor.\nScissor cuts Paper!\nComputer won!"
    else 
      puts "It's a tie."
    end
  end

  if player_choice == "r"
    if computer_choice == "s"
      puts "You picked Rock and computer picked Scissors.\nRock smashes scissors!\nYou won!"
    elsif computer_choice == "p"
      puts "You picked Rock and computer picked Paper.\nPaper wraps Rock!\nComputer won!"
    else 
      puts "It's a tie."
    end
  end

  if player_choice == "s"
    if computer_choice == "p"
      puts "You picked Scissors and computer picked Paper.\nScissors cut Paper!\nYou won!"
    elsif computer_choice == "r"
      puts "You picked Scissors and computer picked Rock.\nRock smashes Scissors!\nComputer won!"
    else 
      puts "It's a tie."
    end
  end

  puts "\n\nPlay again?(Y/N)\n\n"
  answer = gets.chomp.downcase

  if answer != 'y'
    break
  end
end
