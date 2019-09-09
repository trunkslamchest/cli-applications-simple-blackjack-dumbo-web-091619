def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
	card1 = deal_card
	card2 = deal_card

	add_cards = card1 + card2

	display_card_total(add_cards)

	return add_cards
end

def hit?(n)
  prompt_user
  u_input = get_user_input
    if u_input == 'h'
     n += deal_card
     return n
    elsif u_input == 's'
      return n
    else
      invalid_command
      hit?(n)
    end
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  total = initial_round
<<<<<<< HEAD

  until total > 21
      total = hit?(total)
  
    display_card_total(total)
    if total > 21
      end_game(total)
=======
  
  until total > 21
    hit?(total)
  
    display_card_total(total)
    if total > 21
      endgame(total)
>>>>>>> cfa1a796a467c303f5d8415dffe708e528a0ea19
    end
  end
end
    
<<<<<<< HEAD
# runner
=======
runner
>>>>>>> cfa1a796a467c303f5d8415dffe708e528a0ea19
