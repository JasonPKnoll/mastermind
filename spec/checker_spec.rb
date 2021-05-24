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

    it 'Compares position' do
      guess1 = Guess.new('rbbg')
      game1 = Game.new(['r', 'b', 'g', 'y'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)

      expect(check1.compare_position).to eq(2)

      guess1 = Guess.new('bryg')
      game1 = Game.new(['r', 'b', 'g', 'y'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)
      expect(check1.compare_position).to eq(0)

      guess1 = Guess.new('rbgg')
      game1 = Game.new(['r', 'b', 'g', 'y'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)
      expect(check1.compare_position).to eq(3)

      guess1 = Guess.new('rgbg')
      game1 = Game.new(['r', 'b', 'g', 'y'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)
      expect(check1.compare_position).to eq(1)
    end

    it 'returns correct number of colors' do
      guess1 = Guess.new('rrrr')
      game1 = Game.new(['y', 'r', 'r', 'y'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)

      expect(check1.colors).to eq(2)
    end

  end
end
