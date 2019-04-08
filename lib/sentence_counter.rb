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

  private

  # This method takes the data from the sample file, cleans it, and pushes it into the @sentences array. The time complexity for this method is O(n).
  def format(file)
    @sentences = File.readlines(file).map do |line|
      line.chomp
    end
  end

  # This method takes the data from @sentences array, counts it, and loads it into a new CSV file. It's time complexity is derived from the count and load_data methods, so it averages out to O(n).
  def create_csv
    count
    csv = CSV.open("./data/sorted_sentences.csv", "wb")
    csv << ["sentence", "frequency_count"]
    load_data(csv)
  end

  # This method iterates over @sentences and counts the instances of a sentence. It creates a hash where the key is the sentence and the value is its frequency. It's time complexity is O(n).
  def count
    @sentences.each do |sentence|
      @hash[sentence] += 1
    end
  end

  # This method converts the hash values back into an array, so that it can be inserted into the CSV file. It's time complexity is O(n).
  def load_data(csv)
    @hash.each do |sentence, count|
      csv << [sentence, count]
    end
  end
end
