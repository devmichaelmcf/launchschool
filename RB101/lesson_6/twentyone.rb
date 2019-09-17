DECK = [['H', '1'], ['H', '2'], ['H', '3'], ['H', '4'], ['H', '5'], ['H', '6'], ['H', '7'], 
        ['H', '8'], ['H', '9'], ['H','10'], ['H', 'J'], ['H', 'Q'], ['H', 'K'], ['H', 'A'],
        
        ['S', '1'], ['S', '2'], ['S', '3'], ['S', '4'], ['S', '5'], ['S', '6'], ['S', '7'], 
        ['S', '8'], ['S', '9'], ['S','10'], ['S', 'J'], ['S', 'Q'], ['S', 'K'], ['S', 'A'],
        
        ['D', '1'], ['D', '2'], ['D', '3'], ['D', '4'], ['D', '5'], ['D', '6'], ['D', '7'],
        ['D', '8'], ['D', '9'], ['D','10'], ['D', 'J'], ['D', 'Q'], ['D', 'K'], ['D', 'A'],
        
        ['C', '1'], ['C', '2'], ['C', '3'], ['C', '4'], ['C', '5'], ['C', '6'], ['C', '7'],
        ['C', '8'], ['C', '9'], ['C','10'], ['C', 'J'], ['C', 'Q'], ['C', 'K'], ['C', 'A']]
        

deck = DECK

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def deal_a_card!(new_deck)
  card1 = new_deck.sample
  new_deck.delete_if { |item| item == card1}
  card1
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def busted?(cards)
  total(cards) > 21
end

def total(cards_arr)
  values = cards_arr.map { |card| card[1] }
  
  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 #To signify J, Q, K
      sum += 10
    else 
      sum += value.to_i
    end
  end
  
# correct for Aces
values.select { |value| value == "A" }.count.times do
  sum -= 10 if sum > 21
end

sum
end

#OUTER loop start
loop do 
  puts "Welcome to the 21 game. Good luck!"
  
  # creating the card deck and the player and dealer 'hands' variables.
  deck = DECK
  player_cards = []
  dealer_cards = []
  
  # dealing cards intially to dealer and player. Mutates (removes card) from the current deck.
  player_cards << deal_a_card!(deck) 
  player_cards << deal_a_card!(deck)
  dealer_cards << deal_a_card!(deck)
  dealer_cards << deal_a_card!(deck)
  
  # dealer and player cards are nested hashes of two cards (even though only 1 of the dealer's cards seen).
  
  puts "You have the cards #{player_cards[0]} and #{player_cards[1]} and your total is #{total(player_cards)}."
  puts "The dealer has the cards #{dealer_cards[0]} and an UNKNOWN CARD"
  
  loop do
  
    puts "Do you want to 'hit' for another card, or 'stay' to see dealers turn?"
    input = gets.chomp
    break if input.downcase == 'stay'|| busted?(player_cards)
    player_cards << deal_a_card!(deck)
  
  end

  if busted?(player_cards)
  puts "You have lost the game by busting. Your total was #{total(player_cards)}"
  else 
    puts "You chose to stay at #{total(player_cards)}. Now for the dealer's turn!"
  end
  
  # dealer turn
  puts "Dealer turn..."
  
  loop do
    break if total(dealer_cards) >= 17
    
    puts "Dealer hits!"
    dealer_cards << deal_a_card!(deck)
    puts "Dealer's cards are now: #{dealer_cards}"
  end
  
  if busted?(dealer_cards)
    puts "Dealer total is now: #{total(dealer_cards)}"
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    puts "Dealer stays at #{total(dealer_cards)}."
  end
  
  # both player and dealer stays - compare cards!
  
  puts "=================="
  puts "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
  puts "Player has #{player_cards}, for a total of: #{total(player_cards)}"
  puts "=================="
  
  display_result(dealer_cards, player_cards)
  
  break unless play_again?
end
# OUTER loop end

puts "Thanks for playing TWENTY-ONE! Goodbye!"