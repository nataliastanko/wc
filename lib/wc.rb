class WC
  def initialize(filename)
    @filename = filename
    @file = reafile
  end

  def output
    {
      lines: lines,
      words: words,
      chars: chars
    }
  end

  def lines
    @file.count("\n")
  end

  def words
    @file.split(' ').count
  end

  def chars
    @file.split('').count
  end

  private

  def reafile
    File.read(@filename)
  end
end
