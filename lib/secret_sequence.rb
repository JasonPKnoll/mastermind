class SecretSequence
  def initialize(sequence)
    @sequence = sequence
    @code = []
  end

  def randomize_sequence
    initial_array = ['r', 'b', 'g', 'y']

    require 'pry'; binding.pry 

    4.times do
      initial_array.shuffle
    end


  end



end
