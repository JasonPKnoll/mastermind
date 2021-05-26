class Guess
  attr_reader :sequence, :guess_count

  def initialize(sequence)
    @sequence = sequence
    @guess_count = 0
  end

  def guess_counter
    @guess_count += 1
    @guess_count
  end

  def reset_guesses
    @guess_count = 0
  end

  def convert_guess
    @sequence.split(//)
  end
end
