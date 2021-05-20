require 'rspec'
require './lib/secret_sequence'

describe SecretSequence do
  it 'exists and has attributes' do
    code1 = SecretSequence.new('rbgy')

    expect(code1).to be_an(SecretSequence)
  end

  it 'shuffles array' do
    code1 = SecretSequence.new('rbgy')

    code1.randomize_sequence
    expect(code1.secret_code).not_to eq(['r', 'b', 'g', 'y'])
    # expect(code1.secret_code).not_to eq(['r', 'b', 'g', 'y'])
    # expect(code1.secret_code).not_to eq(['r', 'r', 'g', 'y'])
    # expect(code1.secret_code).not_to eq(['r', 'b', 'g', 'g'])
    # expect(code1.secret_code).not_to eq(['r', 'b', 'y', 'y'])
    # expect(code1.secret_code).not_to eq(['r', 'b', 'b', 'y'])
    # expect(code1.secret_code).not_to eq(['b', 'b', 'g', 'y'])
    # expect(code1.secret_code).not_to eq(['r', 'b', 'g', 'r'])
    # expect(code1.secret_code).not_to eq(['b', 'g', 'y', 'r'])
    # expect(code1.secret_code).not_to eq(['g', 'y', 'r', 'b'])
    # expect(code1.secret_code).not_to eq(['b', 'r', 'y', 'g'])
  end

end
