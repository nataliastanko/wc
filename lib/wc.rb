# frozen_string_literal: true

##
# Class imitating wc console command
class WC
  attr_reader :lines, :words, :chars

  def initialize(filename)
    @filename = filename
    raise_file_error
    @lines = 0
    @words = 0
    @chars = 0
    @file = readfile
  end

  def stats
    {
      lines: lines,
      words: words,
      chars: chars
    }
  end

  def output
    stats.values.join(' ')
  end

  private

  def raise_file_error
    raise ArgumentError, 'File does not exist' unless File.exist?(@filename)
  end

  def readfile
    File.open(@filename).each do |line|
      @lines += 1 if line.include?("\n")
      @words += line.split(' ').count
      @chars += line.split('').count
    end
  end
end
