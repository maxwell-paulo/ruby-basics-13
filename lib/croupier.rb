require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  return "Your score is #{player_score}, bank is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  if player_score > 21 || player_score < bank_score
    return "You lose"
  elsif player_score == 21
    return "Black Jack! You win"
  elsif player_score > bank_score
    return "You win!"
  elsif player_score == bank_score
    return "Push, it's a draw. Gets your money back"
  end
end
