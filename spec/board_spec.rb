require 'rspec'
require './lib/board'

describe Board do
  context 'Attributes' do
    it 'exists and has attributes' do
      red = Color.new('red')
      board = Board.new(red, 4)

      expect(board).to be_an_instance_of(Board)
    end
  end
end
