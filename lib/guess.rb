class Guess
  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence
  end

  def convert_guess
    @sequence.split(//)
  end

end
