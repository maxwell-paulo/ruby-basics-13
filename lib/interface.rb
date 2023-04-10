require_relative "croupier"

# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card
puts "Lets play black Jack"
bank = pick_bank_score
player = 0
game = true
answer = "yes"

while game == true
  puts "Card? y or yes to get a new card"
  answer = gets.chomp
  if answer == "y" || answer == "yes"
  player += pick_player_card
  puts state_of_the_game(player, bank)
    if player > 21
      game = false
    end
  else
    game = false
  end
end

puts end_game_message(player, bank)
