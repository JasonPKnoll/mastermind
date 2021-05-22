require 'rspec'
require './lib/game'

code = SecretSequence.new
game = Game.new(code)   #argument needs to reference secret_sequence
game.introduction
