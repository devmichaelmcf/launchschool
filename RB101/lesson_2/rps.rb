VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

player_move_beats = {'rock'=> ['lizard', 'scissors'], 'lizard' => ['spock', 'paper'],
                   'spock' => ['scissors', 'rock'], 'scissors' => ['paper', 'lizard'],
                   'paper' => ['rock', 'spock']}

human_count = 0
computer_count = 0

choice = ''
computer_choice = VALID_CHOICES.sample

def prompt(message)
  Kernel.puts("=> #{message}")
end

def change_letter_to_word(user_word)
  if VALID_CHOICES.include?(user_word)
    user_word
  elsif user_word == 'r'|| user_word == 'p'|| user_word == 's' || user_word == 'l'
    if user_word == 'r'
      'rock'
    elsif user_word == 'p'
      'paper'
    elsif user_word == 'l'
      'lizard'
    elsif user_word == 's'
      puts "Two 's' choices avaliable. Enter 'sp' to choose spock or 'sc' for scissors: "
      input = gets.chomp
        if input == 'sp'
          'spock'
        elsif input == 'sc'
          'scissors'
        else
          change_letter_to_word(user_word)
        end
    end 
  end
end

def display_results(human_move, computer_move)
  player_move_beats = {'rock'=> ['lizard', 'scissors'], 'lizard' => ['spock', 'paper'], 
                   'spock' => ['scissors', 'rock'], 'scissors' => ['paper', 'lizard'],
                  'paper' => ['rock', 'spock'] }

  if player_move_beats[human_move].include?(computer_move)
    puts "Human wins! #{human_move} beats #{computer_move}."
  elsif human_move == computer_move
    puts "It's a tie. You both said #{human_move}"
  else
    puts "You LOST! The computer move of #{computer_move} beats #{human_move}."
  end
end


prompt("First to 10 points wins. 2 pts for a win, 1 for tie.")
loop do
  loop do
    prompt("Enter: #{VALID_CHOICES.join(', ')} or the first letter of your choice.")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    elsif ['r', 'p', 's', 'l'].include?(choice)
      choice = change_letter_to_word(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  if player_move_beats[choice].include?(computer_choice)
    human_count += 2
  elsif choice == computer_choice
    human_count += 1
    computer_count += 1
  else
    computer_count += 2
  end
  if human_count >= 10
   puts "You are the GRAND WINNER with 5 wins!!!! Well done!"
    break
  elsif computer_count >= 10
    puts "The machine wins. The AIcomputer the GRAND WINNER soz :-("
  break
  end

puts "Score human: #{human_count}; Computer: #{computer_count}"

 prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end

prompt("Thanks for playing. Goodbye!")
