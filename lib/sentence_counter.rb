class SentenceCounter
  attr_reader :sentences

  def initialize
    @sentences = []
  end

  def count(file)
    hash = Hash.new(0)
    @sentences = format(file)
    @sentences.each do |sentence|
      hash[sentence] += 1
    end
  end

  def format(file)
    File.readlines(file).map do |line|
      line.chomp
    end
  end
end
