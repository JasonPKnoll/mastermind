require 'rspec'
require './lib/color'
require './lib/board'
require './lib/guess'
require './lib/player'

describe Player do
  context 'Attributes' do
    it "exists" do
      player = Player.new('Antonio')

      expect(player).to be_an_instance_of(Player)
      expect(player.name).to eq('Antonio')
    end
  end
end
