require 'rspec'
require './lib/game'

game = Game.new('rgby')   #argument needs to reference secret_sequence
game.introduction
