class SentenceCounter
  attr_reader :sentences

  def initialize
    @sentences = []
  end

  def count(file)
    @sentences = format(file)
  end

  def format(file)
    File.readlines(file).map do |line|
      line.chomp
    end
  end
end
