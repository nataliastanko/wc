# frozen_string_literal: true

require_relative '../lib/wc'

RSpec.describe WC do
  subject(:wc) { described_class.new('data/text.txt') }

  context 'file does not exist' do
    it 'returns error if file does' do
      expect(wc.lines).to eq(13)
      expect { described_class.new('data/hello.txt') }.to raise_error(ArgumentError)
    end
  end

  it 'returns the number of the lines in a file' do
    expect(wc.lines).to eq(13)
  end

  it 'returns the number of the word in a file' do
    expect(wc.words).to eq(511)
  end

  it 'returns the number of the characters in a file' do
    expect(wc.chars).to eq(3090)
  end

  it 'returns wc stats' do
    hash = {
      lines: 13,
      words: 511,
      chars: 3090
    }
    expect(wc.stats).to eq(hash)
  end

  it 'returns wc output' do
    expect(wc.output).to eq('13 511 3090')
  end
end
