require 'rspec'
require './lib/secret_sequence'
require './lib/board'
require './lib/guess'
require './lib/player'
require './lib/game'

describe Game do
  it "exists" do
    game1 = Game.new('rgby')

    expect(game1).to be_an(Game)
  end

  xit "introduces the game and allows player input" do
    game1 = Game.new
    introduction = "Welcome to Mastermind! Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

    expect(game1.introduction).to eq(introduction)
  end

  # it "returns the chosen option in case of valid input" do
    # game1 = Game.new
    # player_input. = 'p'
    # expect(game1.introduction).to eq('p')
  # end

  it "tracks guesses" do
    game1 = Game.new('rbgy')
    game1.track_guesses
    game1.track_guesses

    expect(game1.guess_tries).to eq(2)
  end

end
