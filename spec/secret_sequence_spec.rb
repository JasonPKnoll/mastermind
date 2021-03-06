require 'rspec'
require './lib/secret_sequence'

describe SecretSequence do
  it 'exists and has attributes' do
    code1 = SecretSequence.new

    expect(code1).to be_an(SecretSequence)
    expect(code1.secret_code).to eq(['r', 'b', 'g', 'y'])
  end

  it 'generates random sequence' do
    code1 = SecretSequence.new
    code1.randomize_sequence

    expect(code1.secret_code).not_to eq(['r', 'b', 'g', 'y'])
    expect(code1.secret_code).not_to eq(['r', 'b', 'g', 'y'])
    expect(code1.secret_code).not_to eq(['r', 'r', 'g', 'y'])
    expect(code1.secret_code).not_to eq(['r', 'b', 'g', 'g'])
    expect(code1.secret_code).not_to eq(['r', 'b', 'y', 'y'])
    expect(code1.secret_code).not_to eq(['r', 'b', 'b', 'y'])
    expect(code1.secret_code).not_to eq(['b', 'b', 'g', 'y'])
    expect(code1.secret_code).not_to eq(['r', 'b', 'g', 'r'])
    expect(code1.secret_code).not_to eq(['b', 'g', 'y', 'r'])
    expect(code1.secret_code).not_to eq(['g', 'y', 'r', 'b'])
    expect(code1.secret_code).not_to eq(['b', 'r', 'y', 'g'])
  end

  it 'converts secret sequence to a string' do
    code1 = SecretSequence.new

    expect(code1.convert_to_string).to eq('rbgy')
  end

end
