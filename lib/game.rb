require './lib/secret_sequence'
require './lib/checker'
require './lib/guess'

class Game
  attr_reader :secret_sequence, :guess_tries

  def initialize(secret_sequence)
    @secret_sequence = secret_sequence
    @guess_tries = 0
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
    @secret_sequence.randomize_sequence
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
    guess
  end

  def guess
    player_guess = gets.chomp.downcase
    play_guess = Guess.new(player_guess)
    if player_guess == "q" or player_guess == "quit"
      exit_game
    elsif player_guess == 'c' or player_guess == "cheat"
      p "This is the secret code:  #{@secret_sequence.convert_to_string.upcase}" # REFERENCE TO SECRET CODE

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
      guess_array = play_guess.convert_guess
      secret_array = @secret_sequence.secret_code
      check = Checker.new(guess_array, secret_array)
      p "#{player_guess} has 3 of the correct elements with #{check.compare_position
      } in the correct positions"
      p "You've taken #{track_guesses} guess"
      guess
    end
  end

  def track_guesses
    @guess_tries += 1
    @guess_tries
  end

  def end_game
    puts "Congratulations! You guessed the sequence #{@secret_sequence.convert_to_string.upcase} in 8 guesses over 4 minutes,
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
