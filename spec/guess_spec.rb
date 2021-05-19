require 'rspec'
require './lib/color'
require './lib/board'
require './lib/guess'
require './lib/player'

describe Guess do
  context 'Attributes' do
    it "exists" do
      guess1 = Guess.new('rgrb') #how do we include an array here

      expect(guess1).to be_an_instance_of(Guess)
      expect(guess1.sequence).to eq('rgrb')
    end
  end
end
