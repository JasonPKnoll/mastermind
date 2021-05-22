require './lib/secret_sequence'

class Game
  attr_reader :secret_sequence

  def initialize(secret_sequence)
    @secret_sequence = secret_sequence
  end

  def introduction
    p "Welcome to MASTERMIND!"
    puts
    p "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    player_input
  end

  def player_input
    input = gets.chomp.downcase
    if input == 'p' or input == 'play'
      start_game
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

  def start_game
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
    guess # This needs to be the players input for a guess
  end

  def guess
    player_guess = gets.chomp.downcase
    # secret_sequence = 'GGRB'
    if player_guess == "q" or player_guess == "quit"
      exit_game
    elsif player_guess == 'c' or player_guess == "cheat"
      # code.convert_to_string
      p "This is the secret code:  #{@secret_sequence}" # REFERENCE TO SECRET CODE

      end_game
    elsif player_guess.length < 4
      p "Your guess sequence is too short."
      guess
    elsif player_guess.length > 4
      p "Your guess sequence is too long."
      guess
    elsif player_guess == @secret_sequence
      end_game
    else
      p "#{player_guess} has 3 of the correct elements with 2 in the correct positions"
      p "You've taken 1 guess"
      guess
    end
  end

  def end_game
    puts "Congratulations! You guessed the sequence #{@secret_sequence} in 8 guesses over 4 minutes,
    22 seconds."
    puts
    puts "Do you want to (p)lay again or (q)uit?"
    player_input = gets.chomp.downcase
    if player_input == 'p' or player_input == 'play'
      start_game
    elsif player_input == 'q' or player_input == 'quit'
      exit_game
    else
      p "#{input} is not a valid command."
      player_input
    end
  end

  def exit_game
    p 'Goodbye!'
  end
end
