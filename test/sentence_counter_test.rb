require './lib/sentence_counter'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class SentenceCounterTest < MiniTest::Test
  def setup
    @sc = SentenceCounter.new
  end

  def test_it_exists
    assert_instance_of SentenceCounter, @sc
  end
end
