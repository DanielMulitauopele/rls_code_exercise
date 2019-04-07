require 'csv'

class SentenceCounter
  attr_reader :sentences

  def initialize
    @sentences = []
    @hash = Hash.new(0)
  end

  def run(file)
    format(file)
    create_csv
  end

  def create_csv
    count
    CSV.open("sorted_sentences.csv", "wb") do |csv|
      csv << ["sentence", "frequency_count"]
      @hash.to_a.each do |sentence_array|
        csv << sentence_array
      end
    end
  end

  def count
    @sentences.each do |sentence|
      @hash[sentence] += 1
    end
  end

  def format(file)
    @sentences = File.readlines(file).map do |line|
      line.chomp
    end
  end
end
