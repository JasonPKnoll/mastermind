# require './lib/game'

class Checker
  attr_reader :guess, :computer, :guess_tries

  def initialize(guess, computer)
    @guess = guess
    @computer = computer
    @guess_tries = 0
  end

  def compare   #Do we need this???
    @guess == @computer
  end

  def compare_position
    position_counter = 0
    if @guess[0] == @computer[0]
      position_counter += 1
    end
    if @guess[1] == @computer[1]
      position_counter += 1
    end
    if @guess[2] == @computer[2]
      position_counter += 1
    end
    if @guess[3] == @computer[3]
      position_counter += 1
    end
    position_counter
  end

  def colors
    # correct_color = 0

    g1_dup = @guess.find_all do |color|
      @guess.count(color) > 1
    end

    c1_dup = @computer.find_all do |color|
      @computer.count(color) > 1
    end

    diff = @computer - @guess
    diff_dup = c1_dup - g1_dup

    # correct_color = 4 - (diff.uniq.count + diff_dup.uniq.count)
    4 - (diff.uniq.count + diff_dup.uniq.count)
  end

end
