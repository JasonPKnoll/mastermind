require './lib/game'

class Checker
  attr_reader :guess

  def initialize(guess, computer)
    @guess = guess
    @computer = computer
    @guess_tries = 0
  end

  def compare
    @guess == @computer
  end


end
