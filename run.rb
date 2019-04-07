require './lib/sentence_counter'

counter = SentenceCounter.new
file = File.open('./data/sample.txt')

counter.count(file)
