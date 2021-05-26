require './lib/secret_sequence'
require './lib/checker'
require './lib/guess'
require './lib/timer'

class Game
  attr_reader :secret_sequence

  def initialize(secret_sequence)
    @secret_sequence = secret_sequence
    @guess_count = Guess.new('rbgy')
    @stopwatch = Timer.new
  end

  def introduction
    p "Welcome to MASTERMIND!"
    puts
    p "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    introduction_input
  end

  def introduction_input
    input = gets.chomp.downcase
    if input == 'p' or input == 'play'
      start_game
    elsif input == 'i' or input == 'instructions'
      puts 'The object of Mastermind is to guess a secret code consisting of 4
colors (red, blue, green, or yellow). A single color may be duplicated
only once. Each guess results in feedback narrowing down the possibilities
of the code. You win when you guess the correct code sequence.'
      introduction_input
    elsif input == 'q' or input == 'quit'
      exit_game
    else
      p "#{input} is not a valid command."
      introduction_input
    end
  end

  def start_game
    @stopwatch.start_time
    @secret_sequence.randomize_sequence

    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
What's your guess?"
    guess
  end

  def guess
    player_guess = gets.chomp.downcase
    if player_guess == "q" or player_guess == "quit"
      exit_game
    elsif player_guess == 'c' or player_guess == "cheat"
      p "This is the secret code:  #{@secret_sequence.convert_to_string.upcase}"
      @guess_count.guess_counter
      end_game
    elsif player_guess.length < 4
      p "Your guess sequence is too short."
      guess
    elsif player_guess.length > 4
      p "Your guess sequence is too long."
      guess
    elsif player_guess == @secret_sequence.convert_to_string
      @guess_count.guess_counter
      end_game
    else
      guess_array = player_guess.split(//)
      secret_array = @secret_sequence.secret_code
      check = Checker.new(guess_array, secret_array)
      p "#{player_guess} has #{check.color_feedback} of the correct elements with #{check.position_feedback
      } in the correct positions"
      p "You've taken #{@guess_count.guess_counter} guess(es)."
      guess
    end
  end

  def end_game
    @stopwatch.stop_time
    puts "Congratulations! You guessed the sequence #{@secret_sequence.convert_to_string.upcase} in #{@guess_count.guess_count} guesses over #{@stopwatch.timer_converter_minutes} minutes,
    #{@stopwatch.timer_converter_seconds} seconds."
    puts
    puts "Do you want to (p)lay again or (q)uit?"
    @guess_count.reset_guesses
    end_game_input
  end

  def end_game_input
    input = gets.chomp.downcase
    if input == 'p' or input == 'play'
      start_game
    elsif input == 'q' or input == 'quit'
      exit_game
    else
      p "#{input} is not a valid command."
      end_game_input
    end
  end

  def exit_game
    p 'Goodbye!'
  end
end
