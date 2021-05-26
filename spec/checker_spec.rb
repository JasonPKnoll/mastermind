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
      expect(check1.computer).to eq(['r', 'b', 'g', 'y'])
    end

    it 'returns correct number of guessed positions' do
      guess1 = Guess.new('rbbg')
      game1 = Game.new(['r', 'b', 'g', 'y'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)

      expect(check1.position_feedback).to eq(2)

      guess1 = Guess.new('bryg')
      game1 = Game.new(['r', 'b', 'g', 'y'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)
      expect(check1.position_feedback).to eq(0)

      guess1 = Guess.new('rbgg')
      game1 = Game.new(['r', 'b', 'g', 'y'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)
      expect(check1.position_feedback).to eq(3)

      guess1 = Guess.new('rgbg')
      game1 = Game.new(['r', 'b', 'g', 'y'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)
      expect(check1.position_feedback).to eq(1)
    end

    it 'returns correct number of guessed colors' do
      guess1 = Guess.new('rrrr')
      game1 = Game.new(['y', 'r', 'r', 'y'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)

      expect(check1.color_feedback).to eq(2)

      guess1 = Guess.new('gyyb')
      game1 = Game.new(['g', 'r', 'r', 'g'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)

      expect(check1.color_feedback).to eq(1)

      guess1 = Guess.new('rbgy')
      game1 = Game.new(['y', 'r', 'g', 'y'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)

      expect(check1.color_feedback).to eq(3)

      guess1 = Guess.new('yybb')
      game1 = Game.new(['g', 'r', 'r', 'g'])
      guess = guess1.convert_guess
      computer = game1.secret_sequence
      check1 = Checker.new(guess, computer)

      expect(check1.color_feedback).to eq(0)
    end
  end
end
