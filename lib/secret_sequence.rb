class SecretSequence
  attr_reader :secret_code

  def initialize
    @secret_code = ['r', 'b', 'g', 'y']
  end

  def randomize_sequence
    array = ['g', 'g', 'b', 'b', 'r', 'r', 'y', 'y']
    @secret_code = array.permutation(4).to_a.shuffle.at(0)
  end

  def convert_to_string
    @secret_code.join
  end
end
