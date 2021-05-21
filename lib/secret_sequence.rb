class SecretSequence
  attr_reader :secret_code, :converted_code

  def initialize
    @secret_code = []
  end

  def randomize_sequence

    2.times do
      array = ['r', 'b', 'g', 'y']
      @secret_code << array.shuffle.pop
      @secret_code << array.shuffle.pop
    end

    @secret_code.shuffle
  end

  def convert_to_string
    @secret_code.join
  end
end
