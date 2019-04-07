class SentenceCounter
  def count(file)
    File.readlines(file).map do |line|
      line.chomp
    end
  end
end
