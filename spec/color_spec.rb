require 'rspec'
require './lib/color'

describe Color do
  context 'Attributes' do
    it "exists and has attributes" do
      red = Color.new('red')

      expect(red).to be_an_instance_of(Color)
      expect(red.color).to eq('red')
    end
  end
end
