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

  def format(file)
    @sentences = File.readlines(file).map do |line|
      line.chomp
    end
  end

  def create_csv
    count
    csv = CSV.open("./data/sorted_sentences.csv", "wb")
    csv << ["sentence", "frequency_count"]
    load_data(csv)
  end

  def count
    @sentences.each do |sentence|
      @hash[sentence] += 1
    end
  end

  def load_data(csv)
    @hash.to_a.each do |sentence_array|
      csv << sentence_array
    end
  end
end
