class Game

  def initialize
  end

  def introduction
    p "Welcome to MASTERMIND"
    p ""
    p "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    player_input
  end

  def start_game
  end

  def player_input
    input = gets.chomp.downcase
    if input == 'p' or input == 'play'
      p "start_game"
    elsif input == 'i' or input == 'instructions'
      p 'instructions'
      player_input
    elsif input == 'q' or input == 'quit'
      exit_game
    else
      p "#{input} is not a valid command."
      player_input
    end
  end

  def exit_game
    'Goodbye!'
  end
end

game1 = Game.new
game1.introduction
