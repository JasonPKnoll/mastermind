require 'rspec'
require './lib/secret_sequence'

describe SecretSequence do
  it 'exists and has attributes' do
    code1 = SecretSequence.new('rbgy')

    expect(code1).to be_an(SecretSequence)
  end

  it 'shuffles array' do
    code1 = SecretSequence.new('rbgy')


    expect(code1).not_to eq(['r', 'b', 'g', 'y'])
  end

end
