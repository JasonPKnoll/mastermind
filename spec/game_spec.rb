require 'rspec'
require './lib/secret_sequence'
require './lib/guess'
require './lib/player'
require './lib/game'

describe Game do
  it "exists and has attributes" do
    game1 = Game.new('rgby')

    expect(game1).to be_an(Game)
    expect(game1.secret_sequence).to eq('rgby')
  end

  it "starts with 0 guesses and counts guesses" do
    game1 = Game.new('rbgy')

    expect(game1.guess_count).to eq(0)

    game1.guess_counter
    game1.guess_counter

    expect(game1.guess_count).to eq(2)
  end

  it "resets guesses" do
    game1 = Game.new('rbgy')
    game1.guess_counter
    game1.guess_counter

    expect(game1.guess_count).to eq(2)

    game1.reset_guesses
    expect(game1.guess_count).to eq(0)
  end

  it 'exits game' do
    game1 = Game.new('rbgy')
    expect(game1.exit_game).to eq('Goodbye!')
  end
end
