# frozen_string_literal: true

##
# Class imitating wc console command
class WC
  def initialize(filename)
    @filename = filename
    @lines = 0
    @words = 0
    @chars = 0
    @file = readfile
  end

  def output
    {
      lines: lines,
      words: words,
      chars: chars
    }
  end

  private

  def readfile
    File.open(@filename).each do |line|
      @lines += 1 if line.include?("\n")
      @words += line.split(' ').count
      @chars += line.split('').count
    end
  end
end
