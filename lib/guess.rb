class Guess
  attr_reader :sequence, :guess_tries

  def initialize(sequence)
    @sequence = sequence
    # @guess_tries = 0
  end

  def convert_guess
    @sequence.split(//)
    # @guess_tries += 1
  end

  def convert_to_string
    @sequence.join
  end
end
