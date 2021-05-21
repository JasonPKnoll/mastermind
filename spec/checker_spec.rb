require 'rspec'
require './lib/checker'

describe Checker do
  context 'Attributes' do
    it "exists and has attributes" do
      red = Checker.new('red')

      expect(red).to be_an_instance_of(Checker)
      expect(red.checker).to eq('red')
    end
  end
end
