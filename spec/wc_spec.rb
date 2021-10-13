# frozen_string_literal: true

require_relative '../lib/wc'

RSpec.describe WC do
  subject(:wc) { described_class.new('text.txt') }

  it 'returns the number of the lines in a file' do
    expect(wc.lines).to eq(13)
  end

  it 'returns the number of the word in a file' do
    expect(wc.words).to eq(511)
  end

  it 'returns the number of the characters in a file' do
    expect(wc.chars).to eq(3090)
  end

  it 'returns wc output' do
    hash = {
      lines: 13,
      words: 511,
      chars: 3090
    }
    expect(wc.output).to eq(hash)
  end
end
