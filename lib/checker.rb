class Checker
  attr_reader :guess, :computer

  def initialize(guess, computer)
    @guess = guess
    @computer = computer
  end

  def position_feedback
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

  def color_feedback
    colors_not_guessed = @computer - @guess

    guess_duplicates = @guess.find_all do |color|
      @guess.count(color) > 1
    end

    computer_duplicates = @computer.find_all do |color|
      @computer.count(color) > 1
    end

    colors_not_guessed_dup = computer_duplicates - guess_duplicates

    4 - (colors_not_guessed.uniq.count + colors_not_guessed_dup.uniq.count)
  end
end
