require './lib/sentence_counter'
require './data/sample.txt'

counter = SentenceCounter.new
file = File.open('./data/sample.txt')

counter.count(file)
