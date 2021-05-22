require 'rspec'
require './lib/board'
require './lib/guess'
require './lib/player'

describe Guess do
  context 'Attributes' do
    it "exists" do
      guess1 = Guess.new('rgby') #how do we include an array here

      expect(guess1).to be_an_instance_of(Guess)
      expect(guess1.sequence).to eq('rgby')
    end
  end

  context 'Modify Input' do
    it 'converts string to array' do
      guess1 = Guess.new('rgby')

      expect(guess1.convert_guess).to eq(['r', 'g', 'b', 'y'])
    end

    it 'converts array to string' do
      guess1 = Guess.new(['r', 'g', 'b', 'y'])
      # guess1.convert_guess
      # guess1.convert_to_string
      expect(guess1.convert_to_string).to eq('rgby')
    end

    # it 'tracks guesses' do
    #   guess1 = Guess.new('rbgy')
    #   guess1.convert_guess
    #   guess2 = Guess.new('rbgy')
    #   guess2.convert_guess
    #
    #   expect(gu)
    # end
  end
end
