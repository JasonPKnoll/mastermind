require 'rspec'
require './lib/secret_sequence'

describe SecretSequence do
  it 'exists and has attributes' do
    code1 = SecretSequence.new

    expect(code1).to be_an(SecretSequence)
  end
end
