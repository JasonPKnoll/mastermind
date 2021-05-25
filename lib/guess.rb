class Guess
  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence
  end

  def convert_guess
    @sequence.split(//)
  end

  # Prob don't need this
  def convert_to_string
    @sequence.join
  end
end
