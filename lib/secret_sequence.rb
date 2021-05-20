class SecretSequence
  attr_reader :secret_code

  def initialize(sequence)
    @sequence = sequence
    @secret_code = []
  end

  def randomize_sequence

    2.times do
      array = ['r', 'y', 'b', 'g']
      @secret_code << array.shuffle.shift
      @secret_code << array.shuffle.shift
    end

    @secret_code.shuffle
  end
end
