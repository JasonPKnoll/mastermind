require 'rspec'
require './lib/checker'
require './lib/game'
require './lib/guess'

describe Checker do
  context 'Attributes' do
    it "exists and has attributes" do
      guess1 = Guess.new('rbgy')
      game1 = Game.new(['r', 'b', 'g', 'y'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)

      expect(check1).to be_an_instance_of(Checker)
      expect(check1.guess).to eq(['r', 'b', 'g', 'y'])
    end

    it "compares and has arrays" do
      guess1 = Guess.new('rbgy')
      game1 = Game.new(['r', 'b', 'g', 'y'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)

      expect(check1.compare).to eq(true)
    end

    it 'Verifies colors in array' do
      guess1 = Guess.new('rbgy')
      game1 = Game.new(['r', 'b', 'g', 'y'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)

      expect(check1.analyze_colors).to eq(5)
    end

    it 'Compares position'
  end
end
