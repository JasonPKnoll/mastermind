require 'rspec'
require './lib/guess'

describe Guess do
  context 'Attributes' do
    it "exists and has attributes" do
      guess1 = Guess.new('rgby')

      expect(guess1).to be_an_instance_of(Guess)
      expect(guess1.sequence).to eq('rgby')
    end
  end

  context 'Modify Input' do
    it 'converts string to array' do
      guess1 = Guess.new('rgby')

      expect(guess1.convert_guess).to eq(['r', 'g', 'b', 'y'])
    end

    # prob don't need this
    it 'converts array to string' do
      guess1 = Guess.new(['r', 'g', 'b', 'y'])
    
      expect(guess1.convert_to_string).to eq('rgby')
    end

  end
end
